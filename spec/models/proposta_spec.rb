require 'spec_helper'

describe Proposta do
  it { should validate_presence_of :titulo }
  it { should validate_length_of(:titulo).within(1..300) }
  it { should embed_many(:paragrafos) }
end
