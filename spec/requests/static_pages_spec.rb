require 'spec_helper'

describe "Static pages" do
  describe "Home Page" do

  	it "should should have the h1 'Wish List'" do
  		visit '/static_pages/home'
  		page.should have_selector('h1', :text => 'Wish List') 
    end

    it "should have the title 'Wish List | Home' " do
    	visit '/static_pages/home' 
    	page.should have_selector('title', :text => "Wish List | Home")
   	end
  end

  describe "Help Page" do

  	it "should have the h1 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end

  	it "should have the title 'Wish List | Help' " do
    	visit '/static_pages/help' 
    	page.should have_selector('title', :text => "Wish List | Help")
   	end
  end

  describe "About Page" do
  	it "should have the h1 'About us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About us')
  	end

  	it "should have the title 'Wish List | About' " do
    	visit '/static_pages/about' 
    	page.should have_selector('title', :text => "Wish List | About")
   	end
  end
end
