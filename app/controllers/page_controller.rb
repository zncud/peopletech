class PageController < ApplicationController
  def start
  end

  def play
    @display = DisplayCard.all
  end

  def result
  end
  
  def about
  end
end
