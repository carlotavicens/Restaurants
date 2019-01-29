module ApplicationHelper

    def logged?
        if session[:user_id]
            return true
        else
            return false
        end
    end
    
    def name(user)
        if session[:user_id] == user.id
            return true
        else
            return false
        end
    end

    def admin?
        if User.find(session[:user_id]).admin
            return true
        else 
            return false
        end
    end


    def nameRes(restaurant)
        if session[:username] == restaurant.user.username
            return true
        else
            return false
        end
    end
end
