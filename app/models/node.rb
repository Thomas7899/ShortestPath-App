class Node < ApplicationRecord
    has_many :start_edges, class_name: 'Edge', foreign_key: 'start_node_id'
    has_many :end_edges, class_name: 'Edge', foreign_key: 'end_node_id'
end
