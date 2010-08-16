require File.dirname(__FILE__) + '/../spec_helper'

include RequestsHelper

describe RequestsHelper do

  before do 
    @tom = Redfinger.finger('tom@tom.joindiaspora.com')
    @evan = Redfinger.finger('evan@status.net')
    @max = Redfinger.finger('mbs348@gmail.com')
  end

  describe "profile" do
    it 'should detect how to subscribe to a diaspora or webfinger profile' do
      subscription_mode(@tom).should == :friend
      subscription_mode(@evan).should == :none
      subscription_mode(@max).should == :none
    end
  end
end
