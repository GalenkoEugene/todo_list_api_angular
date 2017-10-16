class Api::V1::ProjectsController < ApplicationController
  def index
    render json: { hello: 'World' }
  end
end
