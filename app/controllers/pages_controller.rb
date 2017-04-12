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
end
