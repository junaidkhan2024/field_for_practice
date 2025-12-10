class CreateLineitems < ActiveRecord::Migration[8.1]
  def change
    create_table :lineitems do |t|
      t.integer :quantity
      t.datetime :duedate
      t.string :address
      t.belongs_to :reciept, null: false, foreign_key: true

      t.timestamps
    end
  end
end
