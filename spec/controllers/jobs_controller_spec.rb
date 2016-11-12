require 'rails_helper'

describe JobsController do

  describe '#index' do
    before { get :index, params: { page: page } }

    context 'with valid params' do
      let(:page) { '1' }

      it { should render_template('index') }
      it { should respond_with 200 }
    end

    context 'with invalid params' do
      let(:page) { '100' }
      it { should respond_with 404 }
    end
  end
end
