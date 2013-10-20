class InstitutesController < ApplicationController
  before_filter :set_title

  def index
    @section = "learning portal"
  end

  def about
    @section = "about"
  end

  def live_stage
    @section = "live stage"
  end

  def library
    @section = "library"
  end

  def community
    @section = "community"
  end

  protected

  def set_title
    @title = "institute"
  end
end