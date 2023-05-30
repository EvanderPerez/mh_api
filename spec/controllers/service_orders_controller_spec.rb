require 'rails_helper'

RSpec.describe Api::V1::ServiceOrdersController, type: :request do
  let!(:service_order) { create(:service_order, client: client) }
  let!(:client) { create(:client) }

  describe 'GET /service_orders' do
    before do
      create_list(:service_order, 2, client: client)
    end

    it 'should get all service orders' do
      get '/api/v1/service_orders'
      expect(response.parsed_body.count).to eq 3
    end
  end

  describe 'GET /service_orders/:id' do
    it 'should get all service orders' do
      get "/api/v1/service_orders/#{service_order.id}"
      expect(response.status).to be 200
    end
  end

  describe 'POST /service_orders' do
    let(:service_order) { build(:service_order, client: client) }
    let(:tools_attributes) { attributes_for(:tool)}
    let(:params) do
      {
        service_order: service_order.as_json.merge!(
          tools_attributes: [tools_attributes]
        )
      }
    end

    it 'should create a service order' do
      post '/api/v1/service_orders', params: params
      expect(response.parsed_body['details']).to eq service_order.details
    end
  end

  describe 'PUT /service_orders/:id' do
    context 'update just the service_order' do
      let(:service_order_params) { build(:service_order, client: client) }
      let(:tools_attributes) { attributes_for(:tool)}
      let(:params) do
        {
          service_order: service_order_params.as_json.merge!(
            tools_attributes: [tools_attributes]
          )
        }
      end

      it 'should update an existing service order' do
        put "/api/v1/service_orders/#{service_order.id}", params: params
        expect(response.parsed_body['details']).to eq service_order_params.details
      end
    end
  end
end
