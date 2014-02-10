module RequestEscaped

  class Rack::Request

    def escaped?
      params.key? :_escaped_fragment_
    end

    def escaped_fragment
      params[:_escaped_fragment_]
    end

    def escaped_fragment?(fragment)
      escaped_fragment == fragment
    end    

  end

end