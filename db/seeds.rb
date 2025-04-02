# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

node_a = Node.create(name: 'A', latitude: 0, longitude: 0)
node_b = Node.create(name: 'B', latitude: 1, longitude: 0)
node_c = Node.create(name: 'C', latitude: 0, longitude: 1)
node_d = Node.create(name: 'D', latitude: 1, longitude: 1)
node_e = Node.create(name: 'E', latitude: 2, longitude: 1)
node_f = Node.create(name: 'F', latitude: 3, longitude: 1)
node_g = Node.create(name: 'G', latitude: 3, longitude: 2)
node_h = Node.create(name: 'H', latitude: 2, longitude: 3)
node_i = Node.create(name: 'I', latitude: 1, longitude: 3)
node_j = Node.create(name: 'J', latitude: 0, longitude: 3)


# Edges (connections between nodes)
Edge.create(start_node: node_a, end_node: node_b, weight: 11)
Edge.create(start_node: node_a, end_node: node_c, weight: 18)
Edge.create(start_node: node_b, end_node: node_c, weight: 90)
Edge.create(start_node: node_b, end_node: node_d, weight: 133)
Edge.create(start_node: node_b, end_node: node_e, weight: 7)
Edge.create(start_node: node_c, end_node: node_d, weight: 2)
Edge.create(start_node: node_d, end_node: node_e, weight: 45)
Edge.create(start_node: node_e, end_node: node_f, weight: 10)
Edge.create(start_node: node_f, end_node: node_g, weight: 15)
Edge.create(start_node: node_g, end_node: node_h, weight: 20)
Edge.create(start_node: node_h, end_node: node_i, weight: 25)
Edge.create(start_node: node_i, end_node: node_j, weight: 30)
Edge.create(start_node: node_j, end_node: node_a, weight: 35)
Edge.create(start_node: node_c, end_node: node_i, weight: 12)
Edge.create(start_node: node_h, end_node: node_d, weight: 8)

