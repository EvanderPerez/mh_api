module ToolInteractor
  class Update
    include Interactor

    def call
      context.tools = update_tools
    end

    private

    delegate :tools_params, to: :context

    def update_tools
      tools_params[:tools_attributes].each do |attributes|
        tool = find_or_create_tool(attributes)
        destroy_or_update_tool(tool, attributes)
      end
    end

    def find_or_create_tool(attributes)
      if attributes[:id].nil?
        Tool.create(attributes)
      else
        Tool.find(attributes[:id])
      end
    end

    def destroy_or_update_tool(tool, attributes)
      if attributes[:_destroy]
        tool.destroy
      else
        tool.update(attributes.except(:_destroy))
      end
    end
  end
end
