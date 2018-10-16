class CoffeeblogController < ApplicationController
    
    
  def index
      @article = Blog.all.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def post
  end
    
  def success
      
  end
    
  def blog
      
  end

  def confirm
      @article = Blog.new(id: params[:id],created_at: params['created_at'],title: params['title'], image: params['image'],content: params['content'], categoryy: params['category'], taga: params['taga'], tagb: params['tagb'], tagc: params['tagc'], tagd: params['tagd'], tage: params['tage'], tagf: params['tagf'], tagg: params['tagg'], tagh: params['tagh'], tagi: params['tagi'], username: params['username'], password: params['password'])
      @article.save
  end
    
  def detail      
    @detail = Blog.find_by(id: params[:id])
  end

  def tech
      @tech = Blog.where(categoryy: 'テクノロジー').all.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end
    
  def topic
      @topic = Blog.where(categoryy: '話題').all.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end
    
  def tmusic
      @tmusic = Blog.where(categoryy: '音楽').all.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end
    
  def travel
      @travel = Blog.where(categoryy: '観光').all.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end
    
  def tanime
      @tanime = Blog.where(categoryy: 'サブカルチャー').all.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end
    
  def edit
    @post = Blog.find_by(id: params[:id])
  end
    
  def update
    @post = Blog.find_by(id: params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.categoryy = params[:categoryy]
    @post.taga = params[:taga]
    @post.tagb = params[:tagb]
    @post.tagc = params[:tagc]
    @post.tagd = params[:tagd]
    @post.tage = params[:tage]
    @post.tagf = params[:tagf]
    @post.tagg = params[:tagg]
    @post.tagh = params[:tagh]
    @post.tagi = params[:tagi]
    @post.save
    redirect_to("/coffeeblog/#{@post.id}")
  end

  def destroy
    @post = Blog.find_by(id: params[:id])
    @post.destroy
    redirect_to("/coffeeblog/index")
  end
    
end