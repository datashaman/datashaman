require "active_support"
require "cgi"

module Jekyll
  module Filters
    def urlencode(input)
      CGI::escape(input)
    end

    def canonical(input)
      "http://www.datashaman.com/#{ input.sub(/\/index\.html$/, "") }/".gsub(/\/\//, "/")
    end
  end
end
