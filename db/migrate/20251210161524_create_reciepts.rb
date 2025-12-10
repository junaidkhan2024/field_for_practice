class CreateReciepts < ActiveRecord::Migration[8.1]
  def change
    create_table :reciepts do |t|
      t.integer :amount
      t.datetime :date
      t.string :name

      t.timestamps
    end
  end
end
