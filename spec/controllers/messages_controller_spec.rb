require 'spec_helper'
describe MessagesController do

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created status as @status" do
        post :create, :message => {:contents => "this is a test"}
        response.should be_success
        Message.last.contents.should eql "this is a test"
      end
    end
  end

end
