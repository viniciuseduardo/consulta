class Paragrafo
  include Mongoid::Document
  field :texto, :type => String
  
  validates :texto, :presence => true,:length => 1..1000
  
  embedded_in :proposta, :inverse_of => :paragrafos
  embeds_many :comentarios
end