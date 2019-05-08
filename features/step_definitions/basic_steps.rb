When("I visit the landing page") do
  visit root_path
end

Given("I visit the Become a host page") do
  visit new_listing_path
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("{string} is logged in") do |email|
  user = User.find_by_email(email)
  login_as user
end

Given("visits the edit page for {string}") do |listing_name|
  listing = Listing.find_by_name(listing_name)
  visit edit_listing_path(listing)
end

