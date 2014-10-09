class HolesController < ApplicationController
  before_action :set_hole, only: [:show, :edit, :update, :destroy]

  def index
    @holes = Hole.all
    respond_with(@holes)
  end

  def show
    respond_with(@hole)
  end

  def new
    @hole = Hole.new
    respond_with(@hole)
  end

  def edit
  end

  def create
    @hole = Hole.new(hole_params)
    @hole.save
    respond_with(@hole)
  end

  def update
    @hole.update(hole_params)
    respond_with(@hole)
  end

  def destroy
    @hole.destroy
    respond_with(@hole)
  end

  private
    def set_hole
      @hole = Hole.find(params[:id])
    end

    def hole_params
      params.require(:hole).permit(:number, :name, :par, :tees)
    end
end
