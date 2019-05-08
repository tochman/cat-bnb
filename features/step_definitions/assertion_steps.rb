Then("I/she should see {string}") do |content|
  expect(page).to have_content content
end

Then("i/she should not see {string}") do |content|
  expect(page).to have_no_content content
end

Then("I should see {string} within {string} section") do |content, section|
  name = Listing.find_by(name: section)
  dom_section = "#listing_#{name.id}"
  within(dom_section) do
    expect(page).to have_content content
  end
end

Then("I should see {string} button") do |button|
  expect(page).to have_button(button)
end

# Then("she should see {string}") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end

#"You are NOT allowed to edit this listing"
