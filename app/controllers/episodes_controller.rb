class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(params[:id])
    redirect_to episodes_path(@episode)
  end

  def show
    @episode = Episode.find(params[:id])
    
  end
end
