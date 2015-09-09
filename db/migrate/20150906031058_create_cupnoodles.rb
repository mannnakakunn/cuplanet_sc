class CreateCupnoodles < ActiveRecord::Migration
  def change
    create_table :cupnoodles do |t|
      t.string :name
      t.string :review
      t.integer :user_id

      t.timestamps
    end
    add_index :cupnoodles, [:user_id, :created_at]
  end
end
