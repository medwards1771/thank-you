class JobsController < ApplicationController

  def index
    gateway = MuseGateway.new
    page = params[:page].to_i
    if page >= 0 && page <= 99
      results = gateway.fetch("https://api-v2.themuse.com/jobs?page=#{params[:page]}")['results']
      @jobs = results.map do |job|
        Job.new(job['name'], job['refs']['landing_page'], job['company']['name'])
      end
    else
      render :file => 'public/404.html', :status => :not_found, :layout => false
    end
  end
end
