require 'rails_helper'

describe JobsController do

  describe '#index' do
    subject { get :index }

    it 'renders the index template' do
      expect(subject).to render_template(:index)
    end

    it 'should be successful' do
      expect(response).to be_success
    end
  end
end
