class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the Welcome Page."
  end

  def about
    @header = "WHAT ABOUT IT."
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
  if params[:magic_word] == 'lolbuttslol'
  else
    flash[:alert] = "Wrong magic word! Here's some kittens instead."
    redirect_to '/kittens/400'
    end
  end

end
