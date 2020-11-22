class Api::V1::CampaniesController < Api::V1::ApiController
  def show
    @company = Company.first
    render json: @company
  end
end
