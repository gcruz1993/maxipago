require 'dotenv'

require_relative 'maxipago/client'
require_relative 'maxipago/request_builder/request'
require_relative 'maxipago/request_builder/api_request'
require_relative 'maxipago/request_builder/transaction_request'
require_relative 'maxipago/request_builder/rapi_request'
require_relative 'maxipago/xml_builder/builder'
require_relative 'maxipago/xml_builder/builder_api'
require_relative 'maxipago/xml_builder/builder_rapi'
require_relative 'maxipago/xml_builder/builder_transaction'

Dotenv.load
