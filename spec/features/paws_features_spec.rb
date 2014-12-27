require 'rails_helper'

describe 'liking' do 

	before do
		panda = Photo.create(caption: "Panda")
	end

	it 'can paw a photo, updating the photo paw count ', js: true do
		visit '/photos'
		click_link 'Paw it'
		click_link 'Paw it'
		expect(page).to have_content('2 paws')
	end
	
end