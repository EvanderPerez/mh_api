module ToolInteractor
  class Create
    include Interactor

    def call
      context.tools = create_tools
    end

    private

    delegate :tools_params, to: :context

    def create_tools
      Tool.create(merge_tools_params)
    end

    def merge_tools_params
      tools_params[:tools_attributes].each do |tool|
        service_order_id = tool[:service_order_id] || context.service_order.id
        tool.merge!(service_order_id: service_order_id)
      end
      tools_params[:tools_attributes]
    end
  end
end
