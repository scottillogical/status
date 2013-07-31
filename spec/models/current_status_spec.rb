require 'spec_helper'

describe CurrentStatus do
  let(:current_status) do 
    CurrentStatus.last
  end

  it "creates" do 
    CurrentStatus.create!(:up => false)
  end

  it "has a current status" do 
    CurrentStatus.create!(:up => false)
    current_status.up.should eql false
  end

  it "returns the last status" do 
    CurrentStatus.create!(:up => true)
    CurrentStatus.create!(:up => false)
    current_status.up.should eql false
  end
end
