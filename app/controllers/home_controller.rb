class HomeController < ApplicationController
  def index
    @propostas = Proposta.all
  end
end