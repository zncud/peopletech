class CardsController < ApplicationController
  def new
  end
  def play
    @cards =Card.limit(5)
  end
  def result
  end
  def change
  end
end
