require 'rspec'
require '../lib/caesar_cipher.rb'

RSpec.describe CaesarCipher do
    describe '#cipher' do
        context "When testing #cipher method" do
            subject { described_class.new }
            
            it "should say 'Bmfy f xywnsl!' when we called with a string 
            'What a string!' of shift factor of 5" do
                encrypt = subject.cipher("What a string!", 5)
                expect(encrypt).to eq "Bmfy f xywnsl!"
            end
        end
    end

end
