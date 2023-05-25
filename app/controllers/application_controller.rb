class ApplicationController < ActionController::Base
  include RenderConcern

  def render_result_serializer
    return render_each_serializer if @output.respond_to?(:each)

    render json: @output, serializer: @serializer
  end

  def render_each_serializer
    render json: @output, each_serializer: @serializer
  end
end
