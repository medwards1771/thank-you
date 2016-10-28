class JobConstructor

  def perform
    gateway = MuseGateway.new
    results = gateway.fetch('https://api-v2.themuse.com/jobs?page=1')['results']
    results.each do |result|
      Job.new(result['name'], result['refs']['landing_page'], result['company']['name'])
    end
  end
end
