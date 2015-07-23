class PagesController < ApplicationController

  # GET /pages
  def index
    respond_to do |format|
      format.html { render('index') }
      # format.js
      # format.xml  { render xml: @person.to_xml(include: @company) }
    end
  end
end
