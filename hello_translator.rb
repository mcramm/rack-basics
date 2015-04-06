class HelloTranslator
  def initialize(app)
    @app = app
  end

  def translate_hello(str)
    str.gsub(/Hello/, 'Bonjour')
  end

  def call(env)
    status, headers, body = @app.call(env)

    body.map! { |str| translate_hello(str) }

    [status, headers, body]
  end
end
