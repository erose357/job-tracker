FactoryGirl.define do
  factory :company do
    sequence :name do |i|
     "Vandelay Industries#{i}"
    end

    factory :company_with_jobs do
      after(:create) do |company|
        create(:job, company: company)
      end
    end
  end
end
