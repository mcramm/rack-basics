class MyRackApp
  def call(env)
    request = Rack::Request.new(env)

    subject = request.params.fetch('name', 'World')
    body = ["Hello #{subject}"]

    ['200', {'Content-Type' => 'text/html'}, body]
  end
end
