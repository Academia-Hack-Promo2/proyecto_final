class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def new
    @student = Student.new
  end
  def create
    @student = Student.new(permit_params)
    if @student.save
      redirect_to students_path
    else
      reditect 'new'
    end
  end
  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    if @student.update(permit_params)
      redirect_to students_path
    else
      redirect 'new'
    end
  end
  def destroy
    @student = Student.find(params[:id])
    if @student.delete
      redirect_to students_path
    end
  end
  private
    def permit_params
      params.require(:student).permit(:name, :rif, :phone)
    end
end
