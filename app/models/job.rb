class Job
  attr_reader :title, :company_website, :company_name
  @@all ||= []

  def initialize(title, company_website, company_name)
    @title = title
    @company_website = company_website
    @company_name = company_name
    @@all << self
  end

  def self.all
    @@all
  end
end
