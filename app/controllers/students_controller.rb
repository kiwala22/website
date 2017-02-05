class StudentsController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_student, only: [:show, :edit]
  def index
    @students = Student.all
      if params[:search]
        flash[:notice] = "Match found!"
        @students = Student.search(params[:search]).order("created_at DESC")
        #if the search params are nil
      else
        @students = Student.all.order(:amount)
      end
  end
  def show
  end
  def new
    @student = Student.new
  end
  def edit
  end
  def create
    @student = Student.new(student_params)
      if @student.save
        flash[:notice] = 'Record has been updated..'
        redirect_to root_url
      else
        flash[:notice] = 'Record did not save please try again..'
        redirect_to new_student_path
      end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :registration_number, :amount, :receipt_number)
    end
end
