FactoryGirl.define do
  factory :job do
    sequence :title do |i|
      "Latex Salesman#{i}"
    end
    description "So you wanna be a wrench"
    level_of_interest 10
    city "Denver"
    company
    category
  end
end
