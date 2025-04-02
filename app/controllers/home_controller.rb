class HomeController < ApplicationController
  def index
    @nodes = Node.all
    @edges = Edge.all
    Rails.logger.debug "Nodes: #{@nodes.inspect}"
    Rails.logger.debug "Edges: #{@edges.inspect}"
  end

  def find_shortest_path
    start_node_name = params[:start_node]
    end_node_name = params[:end_node]
  
    start_node = Node.find_by(name: start_node_name)
    end_node = Node.find_by(name: end_node_name)
  
    if start_node && end_node
      graph = build_graph
      distances, path = dijkstra(graph, start_node_name)
      total_cost = distances[end_node_name]
  
      @result = {
        distances: distances,
        path: reconstruct_path(path, start_node_name, end_node_name),
        total_cost: total_cost
      }
    else
      @error = "Invalid start or end node."
    end
  
    render 'index'
  end
  

  private

  def build_graph
    graph = Hash.new { |hash, key| hash[key] = {} }

    Edge.includes(:start_node, :end_node).find_each do |edge|
      graph[edge.start_node.name][edge.end_node.name] = edge.weight
      graph[edge.end_node.name][edge.start_node.name] = edge.weight 
    end

    graph
  end

  def dijkstra(graph, start)
    distances = {}
    path = {}
    visited = {}

    graph.keys.each do |node|
      distances[node] = Float::INFINITY
      visited[node] = false
    end

    distances[start] = 0

    while visited.values.include?(false)
      curr_node = distances.select { |node, _dist| !visited[node] }
                           .min_by { |_node, dist| dist }
                           .first

      break if distances[curr_node] == Float::INFINITY

      visited[curr_node] = true

      graph[curr_node].each do |neighbor, weight|
        tentative_distance = distances[curr_node] + weight

        if tentative_distance < distances[neighbor]
          distances[neighbor] = tentative_distance
          path[neighbor] = curr_node
        end
      end
    end

    [distances, path]
  end

  def reconstruct_path(path, start_node, end_node)
    reconstructed_path = [end_node]
    prev_node = path[end_node]

    while prev_node
      reconstructed_path << prev_node
      prev_node = path[prev_node]
    end

    return reconstructed_path.reverse.join(' -> ')
  end
end

