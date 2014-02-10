module RequestEscaped

  class Rack::Request

    def escaped?
      @env.key? :_escaped_fragment_
    end

    def escaped_fragment
      @env[:_escaped_fragment_]
    end

  end

end