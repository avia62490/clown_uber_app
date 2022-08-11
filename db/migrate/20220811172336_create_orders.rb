class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :clown_id
      t.string :date
      t.string :time
      t.string :event

      t.timestamps
    end
  end
end
