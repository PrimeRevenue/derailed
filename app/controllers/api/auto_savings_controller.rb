# rubocop:disable all
class Api::AutoSavingsController < ApplicationController
  def index
    render json: { message: "hello!" }, status: 200
  end

  def create
  end
end
