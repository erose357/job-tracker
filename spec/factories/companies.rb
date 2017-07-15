FactoryGirl.define do
  factory :company do
    sequence :name do |i|
     "Vandelay Industries#{i}"
    end

    factory :company_with_jobs do
      transient do
        number_of_jobs 3
      end

      after(:create) do |company, evaluator|
        create_list(:job, evaluator.number_of_jobs, :company => company)
      end
    end

  end
end

      # after :create do |company, evaluator|
      #   create_list(:job, evaluator.number_of_jobs, :company => company)
      # end
    # end

    # trait :with_jobs do
    #  ignore do
    #   number_of_jobs 3
    #  end
    #
    #  after(:create) do |job, evaluator|
    #    byebug
    #    create_list :job, evaluator.number_of_jobs, company: company
    #  end
    # end
