class Proposta
  include Mongoid::Document
  
  field :titulo, :type => String
  
  validates :titulo, :presence => true,:length => 1..300
  
  embeds_many :paragrafos
end
