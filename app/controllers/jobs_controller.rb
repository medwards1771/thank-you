class JobsController < ApplicationController

  def index
    JobConstructor.new.perform(params[:page])
    if params[:page] == '1'
      @jobs = Job.all[0..19]
    elsif params[:page] == '2'
      @jobs = Job.all[20..39]
    elsif params[:page] == '3'
      @jobs = Job.all[40..59]
    end
  end

  private

  def job_params
    params.permit(:page)
  end
end
