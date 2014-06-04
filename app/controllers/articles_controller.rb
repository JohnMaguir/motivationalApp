class ArticlesController < ApplicationController
    def new
    
    end
    def create
         @article = Article.new(params[:article])
 
         @article.save
         redirect_to @article
    end

    def show
        @article = Article.find(params[:id])
    end

    def webhook
        @article = Article.find(params[:id])
        puts params[:data][:status]
        i = @article.title.to_i
        if (params[:type] == 'deal') && (params[:data][:status] == 'won')
            @article.title = i+1
        end
        @article.text = 'Get out there and make some deals!' if @article.title.to_i<1
        @article.text = 'Nice start, keep it up!' if @article.title.to_i>0
        @article.text = 'WOW! look at you go!' if @article.title.to_i>5
        @article.text = 'Just keep doing what your doing, its clearly working' if @article.title.to_i>10
        @article.save
        render :text => 'Successful', :status => :ok
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end

end
