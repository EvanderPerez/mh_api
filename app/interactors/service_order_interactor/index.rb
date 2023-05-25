module ServiceOrderInteractor
  class Index
    include Interactor

    def call
      context.output = index_service_orders
    end

    private

    delegate :filter_params, to: :context

    def index_service_orders
      ServiceOrder.filter_by(filter_params)
    end
  end
end
