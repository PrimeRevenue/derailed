class ChuckNorrisFactsController < ApplicationController
  def index
    @facts = ChuckNorrisFact.all
    render json: @facts
  end
end
