class HomeController < ApplicationController
  
  def index
  end

  def first
    if params[:place]
      @building=params[:place]
    else
      @building = "hak"
    end
    
    @num = 1
    
    # 우선 동작하게
    # @fests = Fest.where("date = ? and place = ? ", 1, @building)
    
  end

  def second
    if params[:place]
      @building=params[:place]
    else
      @building = "hak"
    end
    
    @num = 1
    
  end

  def third
    if params[:place]
      @building=params[:place]
    else
      @building = "hak"
    end
    
    @num = 1
    
  end
  
  def event
    @showevent = Fest.find(params[:fest_id])
    
  end
  
   def import
    Fest.import(params[:file])
    redirect_to "/", notice: "imported."
  end
  

end
