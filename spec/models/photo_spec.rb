require 'rails_helper'

RSpec.describe Photo, type: :model do

	let(:photo) do
		Photo.new(url: "photo1", user_id: 2)
	end

	it "is an invalid photo without a url" do
		photo = Photo.new(url: nil, user_id: 1)
		expect(photo).not_to be_valid
	end

	it "is an invalid user without a user_id" do
		photo = Photo.new(url: nil, user_id: 1)
		expect(photo).not_to be_valid
	end

	it "is associated with a user" do
		# user = User.new(first_name: "Cindy", last_name: "Sunshine")
		expect(photo).to respond_to(:user)
	end

end
