module ServiceOrderInteractor
  class Index
    include Interactor

    def call
      context.output = index_service_orders
      context.serializer = ServiceOrderSerializer
    end

    private

    delegate :filter_params, to: :context

    def index_service_orders
      ServiceOrder.by_text(filter_params[:text])
                  .by_status(filter_params[:status])
                  .by_client(filter_params[:client_id])
    end
  end
end
