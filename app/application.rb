require_relative 'item.rb'

class Application
  
  @@items = Item.all

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    
    binding.pry
    
    if req.path.match(/items/)
      
      item_name = req.path.split("/items/").last
      item = @@items.find{|i| i.name == item_name}
      
      resp.write item.price
    end
    
    resp.finish
  end
end
