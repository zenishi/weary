require 'weary/response'
require 'weary/adapters/net_http'
# An abstract class. A subclass should be something that actually opens
# a socket to make the request, e.g. Net/HTTP, Curb, etc.
module Weary
  module Adapter

    def call(env)
      connect(Rack::Request.new(env)).finish
    end

    # request is a Rack::Request
    # This computation is performed in a Promise/Future
    # Returns a Rack::Response
    def connect(request)
      Rack::Response.new [""], 501, {"Content-Type" => "text/plain"}
    end
  end
end