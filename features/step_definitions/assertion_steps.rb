Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} within {string} section") do |content, section|
  id = (Listing.find_by(name: section)).id
    within("//div[id=#{id}]") do
      expect(page).to have_content content
  end
end
