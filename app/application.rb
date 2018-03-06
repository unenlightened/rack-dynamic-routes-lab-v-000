class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path.match"/items/"
      item_search = req.path.split("/songs/").last
      item = @@items.select{|i| i.name == item_search}
    else
      resp.write "Route not found"
      resp.statu = 404
    end

    resp.finish
  end
end
