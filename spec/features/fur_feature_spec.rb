require 'rails_helper'

describe 'displays fur humidity level' do 

	it 'allows users to see fur humidity level in Big Bear City, California' do
		visit '/fur'
		expect(page).to have_css("#big-bear-city")
	end
	
end