class Paragrafo
  include Mongoid::Document
  field :texto, :type => String
  
  validates :texto, :presence => true,:length => 1..1000
  
  embeds_many :comentarios
end