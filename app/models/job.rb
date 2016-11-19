class Job
  attr_reader :uid, :title, :information, :landing_page, :company_name
  @@all ||= []

  def initialize(options = {})
    @uid = options[:uid]
    @title = options[:title]
    @information = options[:information]
    @landing_page = options[:landing_page]
    @company_name = options[:company_name]
    @@all << self unless @@all.find{ |job| job.uid == uid }
  end

  def self.all
    @@all
  end

  def self.find_by(uid: uid)
    self.all.find{ |job| job.uid == uid.to_i }
  end
end
