class Api::V1::CategoriesController < Api::V1::ApiController
  def index
    @categories = Category.active
    render json: @categories
  end
end
