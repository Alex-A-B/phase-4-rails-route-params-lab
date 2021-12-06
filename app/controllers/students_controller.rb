class StudentsController < ApplicationController

  def index
    students =  if params[:name]
                  Student.name_query(params[:name])
                else
                  Student.all
                end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
