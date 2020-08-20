class PageController < ApplicationController
  def start
    cookies[:card_ids]=""
    for i in 1..Card.last.id
      cookies[:card_ids]="#{i}a#{cookies[:card_ids]}"
    end
    
    for i in 1..5 do
      @leave=cookies[:card_ids].split("a");
      @card_num=rand(0..@leave.size-1)
      
      DisplayCard.find(i).update_attributes(displaycon: Card.find(@leave[@card_num]).content)
      cookies[:card_ids]=cookies[:card_ids].sub("#{@leave[@card_num]}a","")
    end
  end
  def about
  end
end
