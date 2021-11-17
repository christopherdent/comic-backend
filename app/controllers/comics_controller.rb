class ComicsController < ApplicationController
    require 'rest-client'


 
    

    def get_comics

        publicKey = '8ba20045db37b24d33e34f26c4be8257'
        hash = 'cb8407d0b91d7eaa0d1fae46bddcf1de'


        url = "https://gateway.marvel.com/v1/public/comics?ts=1&apikey=#{publicKey}&hash=#{hash}"
        response = RestClient.get(url)
        render json: response 
    end 

       
end
