class ServiceOrdersController < ApplicationController

  def index
    service_orders = ServiceOrder.all
    render json: service_orders
  end
end
