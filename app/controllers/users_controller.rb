class UsersController < ApplicationController
    skip_before_action :
    before_action :authorized, only: [:show]

    def index
        c=User.all
        render json: c
    end    

    def add
        c=User.create(name: params[:name],email: params[:email],password: params[:password],phone: params[:phone])
        render json: c
    end    

    def change_pass
        id=params[:id]
        email=params[:email]
        p=params[:password]
        oldpass=p.split(',')[0]
        newpass=p.split(',')[1]
        if(User.where(id: id,email: email,password: oldpass))
            User.update(password: newpass)
            render html:"password changed"
        else 
            render html:"unauthorized user"
        end    
    end
end
