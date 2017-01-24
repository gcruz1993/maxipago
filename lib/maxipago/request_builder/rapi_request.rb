require 'net/https'
require 'uri'

module Maxipago
  module RequestBuilder
    class RapiRequest < Maxipago::RequestBuilder::Request
      private

      def set_uri
        url = @url || ENV['MP_URL_RAPI']
        @uri = URI.parse(url)
      end

      def build_xml(opts)
        Maxipago::XmlBuilder::BuilderRapi.new(@maxid, @apikey, @api_version, opts).get_xml_data
      end
    end
  end
end
