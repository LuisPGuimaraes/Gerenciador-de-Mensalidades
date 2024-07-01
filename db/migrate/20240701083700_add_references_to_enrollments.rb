class AddReferencesToEnrollments < ActiveRecord::Migration[7.1]
  def change
    add_reference :enrollments, :student, foreign_key: true
  end
end
