class HomesController < ApplicationController
layout "application"
  # GET /homes
  def index
  end

  # GET /homes/1
  def show
  end

  

  private
    # Only allow a trusted parameter "white list" through.
    def home_params
      params[:home]
    end
end
