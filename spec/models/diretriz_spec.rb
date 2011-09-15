require 'spec_helper'

describe Diretriz do
  it { should validate_presence_of :titulo }
  it { should validate_length_of(:titulo).within(1..100) }
  it { should embed_many(:eixos) }
end
