class AddReferencesToBill < ActiveRecord::Migration[7.1]
  def change
    add_reference :bills, :enrollment, foreign_key: true
  end
end
