# frozen_string_literal: true

class AssignmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_assignment, only: %i[show edit update destroy]

  def index
    @assignments = current_user.assignments
  end

  def new
    @assignment = current_user.assignments.new
  end

  def create
    @assignment = current_user.assignments.new(assignment_params)
    if @assignment.save
      redirect_to assignments_path, notice: 'Created successfully!'
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    @assignment.assign_attributes(assignment_params)
    if @assignment.save
      redirect_to assignments_path, notice: 'Updated successfully!'
    else
      render :edit
    end
  end

  def destroy
    if @assignment.user == current_user
      @assignment.destroy
      redirect_to assignments_path, notice: 'Deleted successfully!'
    else
      redirect_to assignments_path, notice: 'You must be the owner!'
    end
  end

  private

  def set_assignment
    @assignment = current_user.assignments.find_by(id: params[:id])
  end

  def assignment_params
    params.require(:assignment).permit(:name, :start_date, :end_date)
  end
end
