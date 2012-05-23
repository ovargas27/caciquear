When /^I fill book form with "(.*?)" book data$/ do |book|
  book = FactoryGirl.build(:book)
  fill_in 'Title', :with => book.title 
end

When /^I submit book form$/ do
  click_on 'Submit'
end

Then /^"(.*?)" book should been created$/ do |book|
  book = FactoryGirl.attributes_for(:book)
  Book.where(title: book[:title]).count.should == 1
end
