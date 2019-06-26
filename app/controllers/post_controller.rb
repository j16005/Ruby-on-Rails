class PostController < ApplicationController
  def index
    @posts = Post.all
  end
  def create
    @param = params
    #params[:name]に名前、params[:content]に内容が入っています。
    post = Post.new(name: params[:name],content: params[:content])
    #post.saveでデータベースに保存
    if post.save
      #保存に成功した場合、投稿一覧ページにリダイレクトします
      redirect_to :action => "index" 
    else
      @message = "データベースエラー" 
    end
  end
end