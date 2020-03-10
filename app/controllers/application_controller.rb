class ApplicationController < ActionController::API
    include ::ActionController::Cookies

    # def current_user
    #     User.find_by(id: session[:user_id])
    # end

    # def logged_in?
    #     !!current_user
    #     #if current_user is truthy-- !current_user flips false. !!current_user turns it back into true.
    #     #so instead of the object, you're forcing it into a true or false value
    # end

end
