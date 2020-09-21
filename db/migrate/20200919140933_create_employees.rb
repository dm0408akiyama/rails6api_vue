class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :gender
      t.date :birth
      t.bigint :payment

      t.timestamps
    end
  end
end
