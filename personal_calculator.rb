require "sinatra"
require "json"

post "/age" do 
  @request_body = JSON.parse(request.body.read, symbolize_names: true)

  {
    request: @request_body,
    age:     20
  }.to_json
end