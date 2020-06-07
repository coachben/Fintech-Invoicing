class CreateIncoices < ActiveRecord::Migration[6.0]
  def change
    create_table :incoices do |t|
      t.decimal :amount
      t.string :company
      t.string :contragent
      t.string :currency
      t.date :date

      t.timestamps
    end
  end
end
