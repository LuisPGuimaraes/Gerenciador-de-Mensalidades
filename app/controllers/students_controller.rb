class  StudentsController < ApplicationController



  def create
    student = Student.new(student_params)

    if student.save
      render json: {'id': "#{student.id}"},status: :ok
    else
      render json: {status: 'ERROR', message:'Student not saved', data:student},status: :unprocessable_entity
    end
  end

  private
  def student_params
    params.permit(:name, :cpf, :birthdate, :payment_method)
  end
end
