class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  # def create
  #   Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
  #   redirect_to students_path
  # end

  def create
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end
  # def create
  #   session[:form_params] = params.inspect
  #   redirect_to new_student_path
  # end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
