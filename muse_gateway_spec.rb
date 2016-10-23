require_relative 'muse_gateway.rb'
require 'pry'

describe 'MuseGateway' do
  let(:gateway) { MuseGateway.new }

  describe '#fetch' do
    let(:response) { gateway.fetch(url) }

    context 'with a valid url' do
      let(:url) {'https://api-v2.themuse.com/jobs?page=1'}
      it 'should contain the correct keys for company model' do
        expect(response).to include('name', 'short_name', 'id')
      end
    end

    context 'with an invalid url' do
      let(:url) { 'https://api-v2.themuse.com/jobs' }
      it 'should raise an error' do
        expect{ response }.to raise_error(StandardError)
      end
    end
  end
end
