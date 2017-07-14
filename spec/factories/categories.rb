FactoryGirl.define do
  factory :category do
    sequence :title do |i|
      "Category#{i}"
    end
  end
end
