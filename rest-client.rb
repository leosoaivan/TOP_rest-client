require "rest-client"

response = RestClient.get "http://www.bing.com"

def welcome
  system "clear"
  puts "*******************************************".center(80)
  puts "*       Welcome to LSV's Rest Client      *".center(80)
  puts "*******************************************".center(80)
  puts
end

def get_input
  print "What would you like to search for?  "
  input = gets.chomp
end

def parse_input(input)
  search_terms = input.gsub!(/\s/, "%20")
end

def get_output(input)
  response = RestClient.get "http://www.bing.com/search?q=#{input}"
end

def parse_output(output)
  puts "Code = #{output.code}"
  puts
  puts "Cookies = #{output.cookies}"
  puts
  puts "Headers = #{output.headers}"
  puts
  puts "Body = #{output.body}"
end

def start_app
  welcome
  input = parse_input(get_input)
  output = get_output(input)
  parse_output(output)
end

start_app
