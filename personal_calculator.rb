require "sinatra/base"

class PersonalCalculator < Sinatra::Application
  get "/" do 
    "Hello World"
  end
end