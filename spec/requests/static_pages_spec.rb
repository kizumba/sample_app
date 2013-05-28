
require 'spec_helper'

describe "StaticPages" do
	
   #let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  describe "Home Page" do
    it "Should have the content 'Sample App'" do
	visit '/static_pages/home'
      	page.should have_content('Sample App')  
    end
   it "Should have the base title" do
	visit '/static_pages/home'
      	page.should have_selector('title',
			:text => "Ruby on Rails Tutorial Sample App")  
    end
    it "Shouldn't have a custom page title" do
	visit '/static_pages/home'
      	page.should_not have_selector('title',
			:text => "| Home")  
    end

  end

  describe "Help Page" do
    it "Should have the content 'Help'" do
	visit '/static_pages/help'
      	page.should have_content('Help')  
    end
    it "Should have the right title" do
	visit '/static_pages/help'
      	page.should have_selector('title',
			:text => "Ruby on Rails Tutorial Sample App")  
    end
   it "Shouldn't have a custom page title" do
	visit '/static_pages/help'
      	page.should_not have_selector('title',
			:text => "| Help")  
    end

  end
  describe "About Page" do
 	it "Should have the content 'About Us'" do
		visit '/static_pages/about'
      		page.should have_content('About Us')  
    	end
 	it "Should have the right title" do
		visit '/static_pages/about'
      		page.should have_selector('title',
			:text => "Ruby on Rails Tutorial Sample App")  
    	end
	it "Shouldn't have a custom page title" do
		visit '/static_pages/about'
      		page.should_not have_selector('title',
				:text => "| About")  
    	end

  end
 describe "Contact Page" do
 	it "Should have the content 'Contact'" do
		visit '/static_pages/contact'
      		page.should have_content('Contact')  
    	end
 	it "Should have the right title" do
		visit '/static_pages/contact'
      		page.should have_selector('title',
			:text => "Ruby on Rails Tutorial Sample App")  
    	end
	it "Shouldn't have a custom page title" do
		visit '/static_pages/contact'
	      	page.should_not have_selector('title',
				:text => "| Contact")  
    end

  end
end
