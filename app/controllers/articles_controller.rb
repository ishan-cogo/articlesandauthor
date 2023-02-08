class ArticlesController < ApplicationController

    def index
        c=Article.all
        render json: c
    end
    
    def add
        c=Article.create(title: params[:title],category: params[:category],author: params[:author],date: params[:date],body: params[:body])
        render json: c
    end
    def idf
        c=Article.find(params[:id])
        render json: c
    end   

    def iddel
        c=Article.find(params[:id])
        c.destroy
    end
    
    def cate
        c=Article.where(category: params[:category])
        render json: c
    end 
    def auth
        c=Article.where(auhtor: params[:author])
        render json: c
    end

    def partitle
        @query=params[:partialtitle]
        c=Article.where("Articles.title LIKE ?",["%#{@query}%"])
        render json: c
    end

    def range_date
        k=params[:date]
        a=k.split(',')[0]
        b=k.split(',')[1]
        c=[]
        for dat in a..b
            c=c+Article.where(date: dat)
        end
        render json: c    
    end
    
    
end
