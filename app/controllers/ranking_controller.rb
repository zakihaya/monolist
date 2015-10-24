class RankingController < ApplicationController
  def have
    @items = Item.all.sort{ |a,b| b.haves.count - a.haves.count}.first(10)
  end

  def want
    @items = Item.all.sort{ |a,b| b.wants.count - a.wants.count}.first(10)
  end
end

