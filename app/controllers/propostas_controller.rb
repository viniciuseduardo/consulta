class PropostasController < ApplicationController
  def show
    @proposta = Proposta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proposta }
    end
  end
end
