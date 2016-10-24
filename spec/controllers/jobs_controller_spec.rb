require 'rails_helper'

describe JobsController do

  describe '#index' do
    subject { get :index }

    it 'renders the index template' do
      expect(subject).to render_template(:index)
    end
  end
end
