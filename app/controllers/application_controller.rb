class ApplicationController < ActionController::Base
  include RenderConcern

  def render_result_serializer_with_pagination
    render json: paginate_response_with_serializer(@pagy, @output, @serializer)
  end

  def pagy_info(pagy)
    {
      page_size: pagy.vars[:"items"].to_i,
      page_index: pagy.page,
      total: pagy.count,
      page_start: pagy.from,
      page_end: pagy.to,
      pages_total: pagy.pages
    }
  end

  def paginate_response_with_serializer(pagy, results, serializer)
    {
      info: pagy_info(pagy),
      results: ActiveModel::Serializer::CollectionSerializer.new(
        results, serializer: serializer)
    }
  end

  def render_result_serializer
    return render_each_serializer if @output.respond_to?(:each)

    render json: @output, serializer: @serializer
  end

  def render_each_serializer
    render json: @output, each_serializer: @serializer
  end
end
