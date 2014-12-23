require 'rails_helper'

describe 'photos' do
    context 'no photos have been added' do
        it 'should display a prompt to add a photo' do
            visit '/photos'
            expect(page).to have_content 'No photos'
            expect(page).to have_link 'Add a photo'
        end
    end

    context 'photos have been added' do
	    before do
	        Photo.create(caption: 'Panda')
	    end

	    it 'should display photos' do
	        visit '/photos'
	        expect(page).to have_content('Panda')
	        expect(page).not_to have_content('No photos yet')
	    end

	end

	context 'creating post' do
		it 'prompts the user to fill out a form, then displays the new post' do
	        visit '/photos'
			click_link 'Add a photo'
			fill_in 'Caption', with: "Panda"
			click_button 'Create Photo'
			expect(page).to have_content('Panda')
			expect(current_path).to eq '/photos'
		end
	end
end
