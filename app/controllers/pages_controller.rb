class PagesController < ApplicationController

  def welcome
    @header = "This is the Welcome Page."
  end

  def about
    @header = "WHAT ABOUT IT."
  end

  def contest
    @header = "WOO. CONTEST."
  end

  def kitten
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
