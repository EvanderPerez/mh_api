module ServiceOrderInteractor
  class Show
    include Interactor

    def call
      context.output = show_service_orders
    end

    private

    delegate :id, to: :context

    def show_service_orders
      ServiceOrder.find(id)
    end
  end
end
