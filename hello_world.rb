require 'rack'

app = lambda {|env| [200, {"Content Type" => "text/plain" }, ["Hello!"]]}
#app.call({})
Rack::Handler::WEBrick.run app

