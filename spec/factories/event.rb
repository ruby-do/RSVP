FactoryGirl.define do
  factory :event do
    name "Ruby.do"
    description "Esta es la mejor reunión de ruby"
    date DateTime.now
    seat_limit 30
  end
end

