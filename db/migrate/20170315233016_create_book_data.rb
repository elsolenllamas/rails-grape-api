class CreateBookData < ActiveRecord::Migration[5.0]
  def change
    create_table :book_data do |t|
      t.string :name
      t.string :author
      t.integer :year

      t.timestamps
    end
  end
end
