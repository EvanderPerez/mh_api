module ToolInteractor
  class Create
    include Interactor

    def call
      context.tools = create_tools
    end

    private

    delegate :tools_params, to: :context

    def create_tools
      tools_params[:tools_attributes].each do |tool|
        tool[:service_order_id] ||= context.service_order.id
        Tool.create(tool)
      end
      tools_params
    end
  end
end
