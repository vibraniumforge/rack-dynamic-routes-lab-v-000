
class Application

  def call (env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@items=[]

    if req.path=="items/item/"
      if @@items.contain?(item)
        resp.write "#{item.price}"
      else
        resp.write "Error"
        resp.status =400
      end
    else
      resp.write "Item not found"
      resp.status = 404
    end
    resp.finish
  end
end
