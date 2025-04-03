# Clear existing data
Node.destroy_all
Edge.destroy_all

# Nodes
a = Node.create!(name: 'A')
b = Node.create!(name: 'B')
c = Node.create!(name: 'C')
d = Node.create!(name: 'D')
e = Node.create!(name: 'E')
f = Node.create!(name: 'F')
g = Node.create!(name: 'G')
h = Node.create!(name: 'H')
i = Node.create!(name: 'I')
j = Node.create!(name: 'J')

# Edges
Edge.create!(start_node: a, end_node: b, weight: 11)
Edge.create!(start_node: a, end_node: c, weight: 18)
Edge.create!(start_node: b, end_node: c, weight: 90)
Edge.create!(start_node: b, end_node: d, weight: 133)
Edge.create!(start_node: b, end_node: e, weight: 7)
Edge.create!(start_node: c, end_node: d, weight: 2)
Edge.create!(start_node: d, end_node: e, weight: 45)
Edge.create!(start_node: e, end_node: f, weight: 10)
Edge.create!(start_node: f, end_node: g, weight: 15)
Edge.create!(start_node: g, end_node: h, weight: 20)
Edge.create!(start_node: h, end_node: i, weight: 25)
Edge.create!(start_node: i, end_node: j, weight: 30)
Edge.create!(start_node: j, end_node: a, weight: 35)
Edge.create!(start_node: c, end_node: i, weight: 12)
Edge.create!(start_node: h, end_node: d, weight: 8)

puts "✅ Seed data created successfully!"
