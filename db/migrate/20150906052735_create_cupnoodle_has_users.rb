class CreateCupnoodleHasUsers < ActiveRecord::Migration
  def change
    create_table :cupnoodle_has_users do |t|
      t.references :cupnoodle, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
