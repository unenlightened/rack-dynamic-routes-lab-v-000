class application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path=="/items"

    else
      resp.write "Route not found"
      resp.statu = 404
    end

    resp.finish
  end
end
