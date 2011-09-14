require 'spec_helper'

describe Paragrafo do
    it { should validate_presence_of :texto }
    it { should validate_length_of(:texto).within(1..1000) }
    it { should be_embedded_in(:proposta).as_inverse_of(:paragrafos) }
end
