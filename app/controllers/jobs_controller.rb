class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end
  
  def edit
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def update
    @job = Job.find(params[:id])
    
    if @job.update_attributes(job_params)
      redirect_to @job
    else
      respond_to do |format|
        format.html { render action: "edit" }
      end
    end
  end
  
  def create
    @job = Job.new(job_params)
    if @job.save(job_params)
      redirect_to root_path
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  private

  def job_params
    params.require(:job)
          .permit(:title, :job_type, :description, :location, :hero_image)
          .merge(user_id: current_user.id, company_id: current_user.company.id)
  end
end