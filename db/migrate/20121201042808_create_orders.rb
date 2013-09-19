class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :person
      t.references :beverage
      t.datetime :completed_at

      t.timestamps
    end
    add_index :orders, :person_id
    add_index :orders, :beverage_id
  end
end
