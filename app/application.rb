class Application

  def call(env)
    resp = Rack::Response.new
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"   # Write replaces puts
    resp.write "#{num_2}\n"   # Write replaces puts
    resp.write "#{num_3}\n"   # Write replaces puts

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish             #Response does not run until code hits "finish"
  end

end
