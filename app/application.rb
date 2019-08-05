class Application

  def call(env)
    resp = Rack::Response.new

    hour_of_day = Time.now.hour
 
    if hour_of_day < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end