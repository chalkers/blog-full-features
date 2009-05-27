When /^I delete the (\d+)(?:st|nd|rd|th) post$/ do |pos|
  visit posts_url
  match("p[@class='admin']:nth-child(#{pos.to_i})") do
    click_link "Delete Post"
  end
end

Then /^I should see the following posts:$/ do |posts|
  posts.hashes.each do |hash|
    hash.values do |value|
      Then "I should see \"#{value}\""
    end
  end

end


Given /^I add ([\d]+) (.+) posts$/ do |num, factory|
  num.to_i.times { Factory(factory) }
end