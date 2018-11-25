class Application

  def call (env)
    resp = Rack::Response.new
    req = Rack::Request

    if req.path==/items/items

    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
end
