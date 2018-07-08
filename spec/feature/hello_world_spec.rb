require "rails_helper"

describe "" do
  context "Visiting the index" do
    it "Visits the index" do
      chrome_capabilities = Selenium::WebDriver::Remote::Capabilities.chrome()
      chrome = Selenium::WebDriver.for(:remote, :url => 'http://localhost:4444/wd/hub', :desired_capabilities => chrome_capabilities)
      chrome.get('http://google.com')
      puts chrome.title
      chrome.quit

      firefox_capabilities = Selenium::WebDriver::Remote::Capabilities.firefox()
      firefox = Selenium::WebDriver.for(:remote, :url => 'http://localhost:4444/wd/hub', :desired_capabilities => firefox_capabilities)
      firefox.get('http://google.com')
      puts firefox.title
      firefox.quit

      # visit "/"
      # sleep 5
      # expect(page).to have_content "Hello World"
    end
  end
end
