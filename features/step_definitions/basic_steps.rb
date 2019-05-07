Given("I visit the {string} page") do |string|
  visit new_listing_path
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end