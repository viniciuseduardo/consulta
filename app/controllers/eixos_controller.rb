class EixosController < ApplicationController
    def show
      @diretriz = Diretriz.find(params[:diretrize_id])
      @paragrafo = @diretriz.eixos.find(params[:id])
      @comentarios = @paragrafo.comentarios.build
      
      @form = "shared/form_eixo"
      
      render :template => 'paragrafos/show'
    end
end