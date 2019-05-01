class SorteiosController < ApplicationController
    before_action :authenticate_user!, only: [:index, :show]
  
    def index
      @sorteios = Sorteio.all
    end
  
    def show
      @sorteio = Sorteio.find(params[:id])
    end
  end