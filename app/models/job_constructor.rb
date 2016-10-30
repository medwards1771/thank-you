class JobConstructor

  def perform(page)
    gateway = MuseGateway.new
    results = gateway.fetch("https://api-v2.themuse.com/jobs?page=#{page}")['results']
    build_jobs(results)
  end

  def build_jobs(job_data)
    job_data.each do |job|
      Job.new(job['name'], job['refs']['landing_page'], job['company']['name'])
    end
  end
end
