require 'rails_helper'

RSpec.describe User, type: :model do
 

 let(:user) do
 		User.new(first_name: "Cindy", last_name: "Sunshine")
	end

	it "is an invalid user without a first name" do
		user = User.new(first_name: nil, last_name: "Sunshine")
		expect(user).not_to be_valid
	end

	it "is an invalid user without a last name" do
		user = User.new(first_name: "Cindy", last_name: nil)
		expect(user).not_to be_valid
	end

	it "has an array of photos" do
		expect(user.photos).to eq([])
	end

end