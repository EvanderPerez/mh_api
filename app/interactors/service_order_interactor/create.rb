module ServiceOrderInteractor
  class Create
    include Interactor

    def call
      context.service_order = create_service_order
    end

    def rollback
      context.service_order.destroy
    end

    private

    delegate :service_order_params, to: :context

    def create_service_order
      ServiceOrder.create(service_order_params)
    end
  end
end
