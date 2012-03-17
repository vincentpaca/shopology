FactoryGirl.define do
  sequence(:count) {|n| n}
  
  factory :user do
    name "Vincent Paul Mendoza Paca"
    uid "723164356"
    provider "facebook"
    token "AAAEbgiVZClcMBAKCyANmsm2XrQKLLBQKJQZC2OSkZAnCJjrrcKxotAthP3jRhdR7f4fXByDekJZABZCG0Snc0cYZB8jecKZBQAZD"
  end
  
end
