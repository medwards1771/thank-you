class JobsController < ApplicationController
  def create
    gateway = MuseGateway.new
    results = gateway.fetch("https://api-v2.themuse.com/jobs?company=#{params[:company]}&page=1")['results']
    @jobs = results.map do |job|
      Job.new({ uid: job['id'], title: job['name'], information: job['contents'], landing_page: job['refs']['landing_page'], company_name: job['company']['name']})
    end
    render 'jobs/index'
  end

  def index
    redirect_to job_path(params[:uid])
  end

  def show
    @job = Job.find_by(uid: params[:id])
  end
end
