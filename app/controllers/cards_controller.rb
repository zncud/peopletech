class CardsController < ApplicationController
  def new
  end
  def play
    @displaycards =DisplayCard.all
  end
  def result
  end
  def change
    DisplayCard.find(params[:id]).update_attributes(displaycon: Card.find(7).content)
  end
  
  
end
