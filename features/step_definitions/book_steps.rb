When /^I fill book form with "(.*?)" book data$/ do |name|
  book = book_attributes_for name
  within "#new_book" do
    fill_in 'Title', :with => book[:title]
  end
end

When /^I submit book form$/ do
  click_on 'Submit'
end

Then /^"(.*?)" book should been created$/ do |name|
  book = book_attributes_for name
  Book.where(title: book[:title]).count.should == 1
end

def book_attributes_for(title=nil)
  case title
  when 'Foo'
    FactoryGirl.attributes_for(:foo_book)
  else
    FactoryGirl.attributes_for(:book, title: title)
  end
end
