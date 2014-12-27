require 'rails_helper'

describe 'commenting' do 

	before do
		Photo.create(caption: "Panda")
	end

	it 'allows users to leave a comment using a form' do
		visit '/photos'
		click_link 'Add comment'
		fill_in "Thoughts", with: "Awesome"
		click_button 'Growl it!'
		expect(current_path).to eq '/photos'
		expect(page).to have_content('Awesome')
	end
	
end