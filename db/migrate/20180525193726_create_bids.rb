class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.integer :item_id
      t.decimal :amount

      t.timestamps
    end
  end
end
