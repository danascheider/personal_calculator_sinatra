require "sinatra"
require "json"

require_relative "./lib/age_calculator"

post "/age" do 
  @request_body = JSON.parse(request.body.read, symbolize_names: true)

  {
    request: @request_body,
    age:     AgeCalculator.new(@request_body.fetch(:data).fetch(:birthdate)).get_age!
  }.to_json
end