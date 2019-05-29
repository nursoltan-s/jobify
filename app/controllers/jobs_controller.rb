class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update]
  before_action :authenticate_user!

  def index
    @jobs = Job.all
  end

  def show
  end
  
  def edit
  end

  def new
    @job = Job.new
  end

  def update
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

  def set_job
    @job = Job.friendly.find(params[:id])
  end

  def job_params
    params.require(:job)
          .permit(:title, :job_type, :description, :location, :hero_image)
          .merge(user_id: current_user.id, company_id: current_user.company.id, slug: params[:title])
  end
end