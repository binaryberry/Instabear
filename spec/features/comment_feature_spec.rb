require 'rails_helper'

describe 'commenting' do 

	before do
		Photo.create(caption: "This is a bear")
	end

	xit 'allows users to leave a comment using a form' do
		visit '/photos'
		fill_in "Thoughts", with: "What a nice bear"
		click_button 'Growl it!'

		expect(current_path).to eq '/photos'
		expect(page).to have_content('so so')
	end
	
end