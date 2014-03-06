require 'spec_helper'

describe Item do
  it "can't be saved without a description" do
  	item = Item.new
  	item.should_not be_valid
  end

  it "defaults to incompleted" do
  	item = Item.new
  	item.completed.should be_false
  end

  describe "alter default priority" do 
  	it	"instantiated with defaults" do
  		item = Item.new
  		item.priority.should be_false
  	end
  	it "can specify priority" do
  		item = Item.new
  		expect { item.priority = true }.not_to raise_error
  	end

  end

end
