require 'spec_helper'

describe Message do

  it "creates" do 
    Message.create!(:contents => "this is a test")
    Message.last.contents.should eql "this is a test"
  end


end
