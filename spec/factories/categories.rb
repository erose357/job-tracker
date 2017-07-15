FactoryGirl.define do
  factory :category do
    sequence :title do |i|
      "Marketing#{i}"
    end

    factory :category_with_jobs do
      after(:create) do |category|
        create_list(:job, 2, :category => category)
      end
    end

  end
end
