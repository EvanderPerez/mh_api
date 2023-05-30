module ServiceOrderInteractor
  class Update
    include Interactor

    def call
      context.service_order = update_service_order
    end

    def rollback
      context.service_order.update(context.service_order_attributes)
    end

    private

    delegate :service_order_id, :service_order_params, to: :context

    def update_service_order
      service_order = ServiceOrder.find(service_order_id)
      context.service_order_attributes = service_order.attributes

      service_order.update(service_order_params)
      service_order
    end
  end
end
