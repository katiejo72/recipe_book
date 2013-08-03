require 'spec_helper'

describe "Static pages" do

	subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Recipe Book') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "About page" do
    before { visit about_path }

  	it { should have_content('About') }
  	it { should have_title(full_title('About')) }
  end

  describe "MyBook page" do
    before { visit mybook_path }

    it { should have_content('MyBook') }
    it { should have_title(full_title('MyBook')) }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "Log In page" do
    before { visit login_path }
    
    it { should have_content('Log In') }
    it { should have_title(full_title('Log In')) }
  end

end
