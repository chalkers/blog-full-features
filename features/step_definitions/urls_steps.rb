Then /^I the url should end in (.+)$/ do |url_ending|
  URI.parse(current_url).path.to_s[-url_ending.length,url_ending.length].should == url_ending
end
