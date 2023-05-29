module Api
  module V1
    class ServiceOrdersController < ApplicationController
      skip_before_action :verify_authenticity_token

      # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      def index
        initialize_render_concern(service_order_index_interactor)

        render_result_serializer
      end

      def show
        initialize_render_concern(service_order_show_interactor)

        render_result_serializer
      end

      # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      def create
        initialize_render_concern(service_order_create_interactor)

        render_result_serializer
      end

      # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      private

      # == Interactor =============================================================================

      def service_order_index_interactor
        ServiceOrderInteractor::Index.call(filter_params: filter_params)
      end

      def service_order_show_interactor
        ServiceOrderInteractor::Show.call(id: id)
      end

      def service_order_create_interactor
        ServiceOrderInteractor::CreateWithTools.call(
          service_order_params: create_params,
          tools_params: tools_params
        )
      end

      # == Method =================================================================================

      # == Params =================================================================================

      def filter_params
        params.permit(:client_id, :description)
      end

      def id
        params.require(:id)
      end

      def create_params
        params.require(:service_order).permit(
          :client_id,
          :details
        )
      end

      def tools_params
        params.require(:service_order).permit(
          tools_attributes: [
            :model,
            :tool_type,
            :brand,
            :accesories,
            :location
          ]
        )
      end

      # == Poros ==================================================================================

      # == Scope ==================================================================================

      # == Serializer =============================================================================
      def serializer_method
        SingleServiceOrderSerializer
      end
    end
  end
end
