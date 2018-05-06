class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home]

  def home

    @firstfive =  Item.all.order(created_at: :desc).limit(4)

  end
end
