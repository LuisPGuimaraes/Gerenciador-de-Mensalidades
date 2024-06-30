class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :cpf
      t.date :birthdate
      t.string :payment_method

      t.timestamps
    end
  end
end
