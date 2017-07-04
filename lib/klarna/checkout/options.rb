require 'active_model'

module Klarna
  module Checkout
    class Options < Resource
      include ActiveModel::Validations

      attr_accessor :allowed_customer_types

      def as_json
        json_sanitize({
          :allowed_customer_types               => @allowed_customer_types
        })
      end
    end
  end
end
