FactoryGirl.define do
  factory :category do
    sequence :title do |i|
      "Marketing#{i}"
    end
  end
end
