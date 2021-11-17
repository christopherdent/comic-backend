class ComicsController < ApplicationController
    require 'rest-client'


 
    

    def get_comics

        publicKey = '8ba20045db37b24d33e34f26c4be8257'
        hash = '4c2e71d472bde5cbb7bc4a17eac68621'


        url = "https://gateway.marvel.com/v1/public/comics?ts=1&apikey=#{publicKey}&hash=#{hash}"
        comics = RestClient.get(url)



        render json: comics 
    end 

       
end
