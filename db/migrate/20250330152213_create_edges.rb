class CreateEdges < ActiveRecord::Migration[8.0]
  def change
    create_table :edges do |t|
      t.references :start_node, null: false, foreign_key: { to_table: :nodes }
      t.references :end_node, null: false, foreign_key: { to_table: :nodes }
      t.float :weight

      t.timestamps
    end
  end
end
