require "rails_helper"

describe "" do
  context "Visiting the index" do
    it "Visits the index" do
      visit "/"
      expect(page).to have_content "Hello World"
    end
  end
end
