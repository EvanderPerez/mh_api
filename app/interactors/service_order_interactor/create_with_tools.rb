module ServiceOrderInteractor
  class CreateWithTools
    include Interactor::Organizer

    delegate :service_order_params, :tools_params, to: :context

    organize ServiceOrderInteractor::Create,
             ToolInteractor::Create

    around do |interactor|
      interactor.call unless context.service_order.present?
      context.output ||= context.service_order
    end
  end
end
