require 'rails_helper'

RSpec.describe ServiceOrdersController, type: :request do
  before do
    create_list(:service_order, 2, client: client)
  end
  let!(:client) { create(:client) }

  describe 'GET /service_orders' do
    it 'should get all service orders' do
      get '/service_orders'

      expect(response.parsed_body.count).to eq 2
    end
  end
end
