FactoryGirl.define do
  factory :book do
    sequence(:title) {|n| "Book-#{n}" }
  end
  factory :foo_book, parent: :book do
    title "Foo Book"
  end
end
