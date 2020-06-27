class PageController < ApplicationController
  def start
    for i in 1..5 do
      DisplayCard.find(i).update_attributes(displaycon: Card.find(i).content)
    end
  end
  def about
  end
end
