class Diretriz
  include Mongoid::Document
  
  field :titulo, :type => String
  
  validates :titulo, :presence => true, :length => 1..100
  
  embeds_many :eixos
end
