class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :registration_number
      t.decimal :amount
      t.string :receipt_number

      t.timestamps null: false
    end
  end
end
