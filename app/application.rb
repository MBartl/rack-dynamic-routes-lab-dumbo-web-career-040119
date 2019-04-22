require_relative 'item.rb'

class Application
  
  binding.pry
  @@items = Item.all

  def call(env)
    resp = Rack::Response.new
    
    if req.path.match(/items/)
      item_name = 
  end

end
