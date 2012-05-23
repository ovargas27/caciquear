books = { "Foo" => {title: "Foo Book"} }

When /^I fill book form with "(.*?)" book data$/ do |book|
  title = books[book][:title]
  fill_in 'Title', :with => title 
end

When /^I submit book form$/ do
  click_on 'Submit'
end

Then /^"(.*?)" book should been created$/ do |book|
  title = books[book][:title]
  Book.where(title: title).count.should == 1
end
