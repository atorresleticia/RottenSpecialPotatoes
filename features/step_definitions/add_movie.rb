When (/^I go to "(.*)"/) do |place|
    visit path_to(place)
end

And(/^I click on "([^\"]*)"/) do |link|
    click_link(link)
end

Then (/^I go to "(.*)"/) do |place|
	visit path_to(place)
end

And(/^I click on "([^\"]*)"/) do |link|
    click_link(link)
end

Then (/^I go to "(.*)"/) do |place|
	visit path_to(place)
end

Given (/^I am on a form page/) do
    page.find_by_id('new_movie_path')
end

When (/^I fill in "(.*)" with "(.*)"/) do |field , content|
  fill_in (field), :with => (content)
end

And(/^I press "([^\"]*)"/) do |button|
    click_button(button)
end

Then (/^I go to "(.*)"/) do |place|
	visit path_to(place)
end

And(/^I click on "([^\"]*)"/) do |link|
    click_link(link)
end

Then (/^I should see "([^\"]*)"/) do |arg|
    page.find_by_id('notice').text == arg
end