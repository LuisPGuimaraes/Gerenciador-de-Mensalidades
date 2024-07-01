class ChangeCpfToStringInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :students, :cpf, :string
  end
end
