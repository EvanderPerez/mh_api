module RenderConcern
  def initialize_render_concern(result)
    @output = result.output
    @serializer = result.response_serializer || serializer_method
  end
end
