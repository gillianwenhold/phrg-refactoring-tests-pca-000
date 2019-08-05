# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { "You Won't Believe This Top Secret Mission" }
    content { "This is the top secret mission. You have to read all the way to the end to figure out what it is, but even then can't be sure it'll be figured out. Here's the thing though - once you know what it is, you can never un-know. Think you figured it out? Good, let's get started! Do you choose to accept?" }
    summary { "This is the summary, but read the content to know for sure." }
    category { "Fiction" }
  end
end
