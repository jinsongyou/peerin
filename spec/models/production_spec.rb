require 'spec_helper'

describe Production do
  before do
    @product = Production.new();
  end
  
  describe ".active?" do
    it "should return true if status is ACTIVE" do
	  @product.status = 'ACTIVE'
	  @product.active?.should be_truthy
	end
	
	it "should return false if status is not ACTIVE" do
	  @product.status = 'INACTIVE'
	  @product.active?.should be_falsey
	end
  end
end