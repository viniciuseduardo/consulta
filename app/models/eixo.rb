class Eixo < Paragrafo
  embedded_in :diretriz, :inverse_of => :eixos
  embeds_many :acoes, :class_name => "Acao" 
end