class CompaniesController < ApplicationController
  before_action :set_company, only: [:edit, :show, :update]
  before_action :authenticate_user!

  def index
    @companies = Company.all
  end

  def edit
  end

  def show
  end
  
  def update
    if @company.update_attributes(company_params)
      redirect_to @company
    else
      respond_to do |format|
        format.html { render action: "edit" }
      end
    end
  end

  def new
    @company = Company.new
  end
  
  def create
    @company = Company.new(company_params)
    if @company.save(company_params)
      redirect_to @company
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  private

  def set_company
    @company = Company.friendly.find(params[:id])
  end

  def company_params
    params.require(:company)
          .permit(:title, :company_logo, :description, :facebook_url, :twitter_url, :linkedin_url)
          .merge(user_id: current_user.id, slug: params[:title])
  end
end