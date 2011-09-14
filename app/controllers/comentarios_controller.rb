class ComentariosController < ApplicationController
  def create
    @proposta = Proposta.find(params[:comentario][:proposta_id])
    @paragrafo = @proposta.paragrafos.find(params[:comentario][:paragrafo_id])
    
    redirect_to proposta_paragrafo_path(@proposta, @paragrafo) if @paragrafo.comentarios.create!(params[:comentario])
  end
end