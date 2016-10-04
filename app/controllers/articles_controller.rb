class ArticlesController < ApplicationController
	before_action :authenticate_user!
	def index
		@articles = Article.all
	end
	def new	
		@article = Article.new
	end
	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
	end			
	
	def create
		@article = Article.new(article_params)
		@article.user_id = current_user.id
		@article.save
		redirect_to @article	
	end
	def edit
		@article = Article.find(params[:id])
	end
	def update
		@article = Article.find(params[:id])
		@article.user_id = current_user.id
		@article.update(article_params)
		redirect_to @article
	end
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end
	private
		def article_params
			params.require(:article).permit(:title,:body,:tag_list)		
		end
end
