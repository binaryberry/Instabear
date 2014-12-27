require 'rails_helper'

describe 'liking' do 

	before do
		panda = Photo.create(caption: "Panda")
		panda.comments.create(thoughts: "great panda.")
	end

	xit 'can like a comment, updating the comment like count ', js: true do
		visit '/photos'
		click_link 'Like'
		expect(page).to have_content('1 Like')
	end
	
end