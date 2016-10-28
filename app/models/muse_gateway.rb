require 'httparty'

class MuseGateway
  include HTTParty

  def fetch(url_endpoint)
    response = HTTParty.get(url_endpoint)
    case response.code
    when 200..299
      response
    else
      raise StandardError
    end
  end
end
