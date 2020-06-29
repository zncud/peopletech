class CardsController < ApplicationController
  @@cnt=0
  def new
  end
  def play
    @displaycards =DisplayCard.all
    
  end
  def result
    @displaycards =DisplayCard.all
  end
  def change
    n=Card.last.id-@@cnt
    if(n!=5)
      DisplayCard.find(params[:id]).update_attributes(displaycon: Card.find(n).content)
      @@cnt=@@cnt+1
    else
      @@cnt=0
      redirect_to result_path
    end
    
  end
end
