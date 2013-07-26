require 'spec_helper'

describe "Static pages" do

	let(:base_title) {"Recipe Book"}

  describe "Home page" do
    it "should have the content 'Recipe Book'" do
      visit '/static_pages/home'
      expect(page).to have_content('Recipe Book')
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Recipe Book")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to_have_title('| Home')
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

    it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end

    it "should have the title 'About'" do
    	visit '/static_pages/about'
    	expect(page).to have_title("#{base_title} | About")
    end
  end

end
