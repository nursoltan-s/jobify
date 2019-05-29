class CompaniesController < ApplicationController
  before_action :authenticate_user!

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end
  
  def create
    @company = Company.new(company_params)
    if @company.save(company_params)
      redirect_to root_path
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  private

  def company_params
    params.require(:company)
          .permit(:title, :company_logo, :description, :facebook_url, :twitter_url, :linkedin_url)
          .merge(user_id: current_user.id)
  end
end