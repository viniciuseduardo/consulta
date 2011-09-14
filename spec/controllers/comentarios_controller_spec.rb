require 'spec_helper'

describe ComentariosController do
  def valid_attributes
    {:texto => "asdbsadbjdsbkdbsjakdbjkadbjkabd", :justificativa => "asdnbjasdsabdbadbjkasbdjkabdkkbjdsbkdj"}
  end


  describe "POST 'create'" do
    it "should be redirect" do
      proposta = Proposta.create! :titulo => "Tesaldnlsandalsndlnsdnsndabdabsjdb"
      paragrafo = proposta.paragrafos.create! :texto => "asljdbsadbadbkkhvadbakdajsbdjasbdkaddbad"      
      post :create, :proposta_id => proposta.id.to_s, :paragrafo_id => paragrafo.id.to_s, :comentario => valid_attributes
      response.should redirect_to proposta_paragrafo_path(proposta, paragrafo)
    end
  end

end