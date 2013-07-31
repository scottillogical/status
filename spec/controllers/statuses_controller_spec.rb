require 'spec_helper'

describe StatusesController do

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created status as @status" do
        post :create, :status => {:up => false}
        response.should be_success
        CurrentStatus.last.up.should eql false
      end
    end
  end
end
