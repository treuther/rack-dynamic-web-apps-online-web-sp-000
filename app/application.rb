class Application

  def call(env)
    resp = Rack::Response.new
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
    resp.finish
  end

end
