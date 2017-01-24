require 'net/https'
require 'uri'

module Maxipago
  module RequestBuilder
    class ApiRequest < Maxipago::RequestBuilder::Request
      private

      def set_uri
        url = @url || ENV['MP_URL_API']
        @uri = URI.parse(url)
      end

      def build_xml(opts)
        Maxipago::XmlBuilder::BuilderApi.new(@maxid, @apikey, @api_version, opts).get_xml_data
      end
    end
  end
end
