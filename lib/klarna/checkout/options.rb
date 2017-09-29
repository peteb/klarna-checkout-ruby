require 'active_model'

module Klarna
  module Checkout
    class Options < Resource
      include ActiveModel::Validations

      attr_accessor :allowed_customer_types, :color_button, :color_button_text

      def as_json
        json_sanitize({
          :allowed_customer_types               => @allowed_customer_types,
          :color_button                         => @color_button,
          :color_button_text                    => @color_button_text
        })
      end
    end
  end
end
