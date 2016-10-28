class JobsController < ApplicationController

  def index
    JobConstructor.new.perform
    @jobs = Job.all
  end
end
