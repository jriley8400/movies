class ApplicationController < ActionController::Base
  
  def show
    @m = Movie.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    m = Movie.new
    m.title = params['title']
    m.url = params['url']
    m.image = params['image']
    m.save
    redirect_to "/movie/#{m.id}"
  end
  
  def edit
    @m = Movie.find_by_id(params['id'])
  end
  
  def update
    @m = Movie.find_by_id(params['id'])
    @m.title = params['title']
    @m.url = params['url']
    @m.image = params['image']
    @m.save
    redirect_to "/movie/#{ @m.id }"
  end
  
  def index
    @m = Movie.all
  end
  
  def destroy
    @m = Movie.find_by_id(params['id'])
    @m.destroy
    render 'destroy'
  end
  
  protect_from_forgery with: :exception
end
