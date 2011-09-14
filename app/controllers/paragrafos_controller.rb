class ParagrafosController < ApplicationController
    def show
      @proposta = Proposta.find(params[:proposta_id])
      @paragrafo = @proposta.paragrafos.find(params[:id])
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @paragrafo }
      end
    end
end