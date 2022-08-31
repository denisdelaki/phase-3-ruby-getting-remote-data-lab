# Write your code here
#create a class called GetRequester that initialize  with string URL
require 'net/http'
require 'open-uri'
require 'json'
class GetRequester 
    #initialize with the url
    def initialize(url)
      @url="https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    end
    #create a method called get_response that sends a GET request to the URL passed on initialization 
    #the method also returns the body of the response
def get_response_body
  uri=URI.parse(URL)
  #send GET request 
  response=Net::HTTP.get_response(uri)
  #return the body
  response.body
end
#create a method called parse_json that uses get_response method to send requests and return a Ruby array
def parse_json 
    #GetRequester parse_json converts JSON returned from 'get_response_body' into Ruby data structures
people=JSON.parse(self.get_response_body)
people.collect {|person| person}

end
end