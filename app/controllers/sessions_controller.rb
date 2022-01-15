class SessionsController < ApplicationController 

    def create     
        byebug     
        @user = User.find_by(username: session_params[:username])
        if @user && @user.authenticate(session_params[:password])
            login! ##helper
            render json: { logged_in: true, user: @user }
        else 
            render json: { status: 401, errors: ['no such user'] }
        end 
    end 

    def is_logged_in?        
        if logged_in? && current_user 
            puts 'logged in'
            render json: { 
                logged_in: true, 
                user: current_user
            }
        else 
            puts 'not logged in'
            render json: { 
                logged_in: false, 
                message: 'no such user'
            }
        end 
    end 

    def destroy 
        session.clear ##login!
        render json: {
          status: 200,
          logged_out: true
        }
    end 


private 

    def session_params 
        params.require(:user).permit(:username, :password, :password_confirmation)
    end 





end 