class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
  	#ストロングパラメータを使用
  	post = Post.new(post_params)
  	#データベースへ保存する
  	post.save
  	#トップ画面へリダイレクト
  	dedirect_to '/top'
  	
  end



private
  def post_params
  	params.require(:post).permit(:title, :body)
  end

end

