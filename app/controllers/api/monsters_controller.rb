# frozen_string_literal: true

module Api
  class MonstersController < ApplicationController
    def index
      @monsters = Monster.all
      # render json: @monsters
      render(json: @monsters)
    end

    def show; end
  end
end
