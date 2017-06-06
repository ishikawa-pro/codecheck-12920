require 'rubygems'
require 'websocket-client-simple'

def main(argv)
  # このコードは引数と標準出力を用いたサンプルコードです。
  # このコードは好きなように編集・削除してもらって構いません。
  # ---
  # This is a sample code to use arguments and outputs.
  # Edit and remove this code as you like.
  
    ws = WebSocket::Client::Simple.connect 'http://challenge-server.code-check.io/api/websocket/hello/'
    name = String.new 
    ws.on :message do |msg|
        if /Hello, I'm */ != msg.data
            puts "#{name} said: #{msg.data}"
        end
        puts msg.data
        name = msg.data.gsub(/Hello, I'm /,"")
        ws.send msg.data.gsub(/Hello, I'm /,"Hello, ")        
    end

    ws.on :hello do |msg|
        puts "test#{msg}"
    end

    loop do

    end

end
