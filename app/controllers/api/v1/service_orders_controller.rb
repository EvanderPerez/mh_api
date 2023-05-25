module Api
  module V1
    class ServiceOrdersController < ApplicationController
      # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      def index
        initialize_render_concern(service_order_index_interactor)

        render_result_serializer
      end

      # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      private

      # == Interactor =============================================================================

      def service_order_index_interactor
        ServiceOrderInteractor::Index.call(filter_params: filter_params)
      end

      # == Method =================================================================================

      # == Params =================================================================================

      def filter_params
        params.permit(:client_id, :description)
      end

      # == Poros ==================================================================================

      # == Scope ==================================================================================

      # == Serializer =============================================================================
      def serializer_method
        ServiceOrderSerializer
      end
    end
  end
end
