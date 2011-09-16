class DiretrizesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  def index
    @diretrizes = Diretriz.all
  end

  def show
    @diretriz = Diretriz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proposta }
    end
  end
end
