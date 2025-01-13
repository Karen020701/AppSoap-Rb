require 'webrick'
require 'savon'


class HelloWorldServer < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(request, response)
   
    client = Savon.client(wsdl: 'http://localhost:8080')  
    message = client.call(:say_hello, message: { name: 'Hola Mundo' })

    response.body = message.body.to_s
    response['Content-Type'] = 'text/xml'
  end
end


server = WEBrick::HTTPServer.new(Port: 8080)
server.mount '/hello_world', HelloWorldServer

trap('INT') { server.shutdown }
server.start
