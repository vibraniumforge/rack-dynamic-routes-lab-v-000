class Application

  def call (env)
    resp = Rack::Response.new
    req = Rack::Request

    if req.path.==/items/items
      if @@items.contain?(item)
        resp.write "#{item.price}"
      else
        resp.write "Error"
        resp.status =400
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
end
