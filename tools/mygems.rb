require 'net/http'                  # The library we need

class Mygems
  def initialize
    @host = 'www.baidu.com'     # The web server
    @path = '/'                 # The file we want
  end

  def do
    http = Net::HTTP.new(@host)          # Create a connection
    response = http.get(@path)
    puts response.body
  end
end

mygems=Mygems.new
mygems.do