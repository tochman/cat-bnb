Given("the following listings exist(:)") do |table|
  table.hashes.each do |listing|
    owner = User.find_by_email(listing[:owner])
    FactoryBot.create(:listing, listing.except('owner').merge(owner: owner))
  end
end

Given("these cat owners exist(:)") do |table|
  table.hashes.each do |user_hash|
    FactoryBot.create(:user, user_hash)
  end
end
