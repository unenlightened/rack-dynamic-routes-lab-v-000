class application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path.match"/items/"
      item = req.path.split("/songs/").last

    else
      resp.write "Route not found"
      resp.statu = 404
    end

    resp.finish
  end
end
