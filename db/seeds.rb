require "faker"

separator = ">>>>>>>><<<<<<<<<<"

p separator

5.times do
  bf = RailsVoter::BallotForm.create(name: Faker::StarWars.planet)
  2.times do
    bfd = bf.ballot_form_details.create(name: Faker::StarWars.character)
    3.times do
      bfd.voting_results.create
    end
  end
end

message = "5 ballot forms, 10 ballot form details and 30 voting results created."
p separator
p message
p separator
