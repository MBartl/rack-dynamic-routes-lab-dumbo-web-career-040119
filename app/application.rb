class Application
  
  @@items = Item.all

  def call(env)
    resp = Rack::Response.new
  end

end
