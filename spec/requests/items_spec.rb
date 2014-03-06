require 'spec_helper'

describe "Items page" do
  describe "test index view" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get items_path
      response.status.should be(200)
    end
  end

  # it "should have a title" do
  # 	visit root_path
  # 	expect(page).to have_content("Ryan's To-do Items")
  # end

  # Capybara DSL doesn't seem to be working...

  describe "change checked items" do
  	let(:item) { Item.create(description: "test") }

  	it "should update the 'completed' status of the item" do
  		expect { post items_complete_path }.to change {item.completed}.to(true)
  	end
  end

end
