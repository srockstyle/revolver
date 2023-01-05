class Api::MonstersController < ApplicationController

  def index
    @monsters = Monster.all
    #render json: @monsters
    render json: @monsters
  end

  def show

  end

end
