module RenderConcern
  def initialize_render_concern(result)
    @output = result.output
    @serializer = result.serializer || serializer_method
  end

  def initialize_render_with_pagination_concern(result)
    @pagy, @output = pagy(
      result.output
    )
    @serializer = result.serializer || serializer_method
  end
end
