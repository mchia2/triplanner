Given(/^I click "(.*?)"$/) do |arg1|
 	visit '/'
end


Then(/^I should be brought to a page with (\d+) attractions and (\d+) estaurants$/) do |arg1, arg2|
  page.has_content?("Universal Studios Singapore")
  page.has_content?("Crane Dance")
  page.has_content?("Pizza Hut")
end