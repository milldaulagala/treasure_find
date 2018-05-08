class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home]

  def home

    @firstfive =  Item.all.order(created_at: :desc).limit(6)

  end

  def index
    

    unless params[:items].present?

      @items = Item.all
  
      else
  
        item_name = params[:items][:search]
        @items = Item.search_by_name(item_name)
  
      end

  end

end
