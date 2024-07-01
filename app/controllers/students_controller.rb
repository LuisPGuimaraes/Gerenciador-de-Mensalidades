require 'time'
class  StudentsController < ApplicationController

  def index
      students_all = Student.all;
      selected_students = choose_students(students_all)
      render json: { data:selected_students },status: :ok
  end

  def create
    student = Student.new(student_params)

    if Date.parse(student_params['birthdate']) > Date.current
      render json: { error: 'Data de Nascimento inválida' }, status: :bad_request
      return
    end

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

  def page_params
        params.permit(:page, :count)
  end

  def choose_students(students_all)
    page = page_params["page"]
    count = page_params["count"]
    index_max = page * count
    index_min = index_max - count
    selected_students = []

    for student in index_min...index_max
      selected_students.append(students_all[student])
    end
    selected_students
  end
end
