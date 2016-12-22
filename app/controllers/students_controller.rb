class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
    # binding.pry
    @student.active == true ? @student.active = false : @student.active = true
    @student.save
   redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
