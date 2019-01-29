module ApplicationHelper
#comprovació si l'usuari esta logged in
    def logged?
        if session[:user_id]
            return true
        else
            return false
        end
    end
#comprovació si el nom del usuari coincideix amb el user_id   
    def name(user)
        if session[:user_id] == user.id
            return true
        else
            return false
        end
    end
#comprovacio si l'user es admin
    def admin?
        if User.find(session[:user_id]).admin
            return true
        else 
            return false
        end
    end
#comprovacio si el restaurant es de l'usuari
    def nameRes(restaurant)
        if session[:username] == restaurant.user.username
            return true
        else
            return false
        end
    end
end
