require_relative './app/item.rb'

class Application
  
  binding.pry
  @@items = Item.all

  def call(env)
    resp = Rack::Response.new
  end

end
