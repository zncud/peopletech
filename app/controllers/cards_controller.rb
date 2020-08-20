class CardsController < ApplicationController
  def new
  end
  def play
    @displaycards =DisplayCard.all
    
  end
  def result
    @displaycards =DisplayCard.all
  end
  def change

      @leave=cookies[:card_ids].split("a");
      @card_num=rand(0..@leave.size-1)
      DisplayCard.find(params[:id]).update_attributes(displaycon: Card.find(@leave[@card_num]).content)
      cookies[:card_ids]=cookies[:card_ids].sub("#{@leave[@card_num]}a","")
    if cookies[:card_ids] != ""    
      redirect_to play_path
    else
      redirect_to result_path
    end
  end
end
