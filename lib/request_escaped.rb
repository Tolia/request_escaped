module RequestEscaped

  class Rack::Request

    def escaped?
      @env._params.key? :_escaped_fragment_
    end

    def escaped_fragment
      @env["_params._escaped_fragment_"]
    end

    def escaped_fragment?(fragment)
      @env._params
    end    

  end

end