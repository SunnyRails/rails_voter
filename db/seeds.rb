require "faker"

p "Remove seeds"
RailsVoter::VotingResult.destroy_all
RailsVoter::BallotFormDetail.destroy_all
RailsVoter::BallotForm.destroy_all

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

p "United States presidential election, 2016 seeds"

bf = RailsVoter::BallotForm.create(name: "United States presidential election, 2016")

bfd = bf.ballot_form_details.create(name: "Hillary Clinton")
4.times { bfd.voting_results.create }

bfd = bf.ballot_form_details.create(name: "Donald Trump")
3.times { bfd.voting_results.create }

bfd = bf.ballot_form_details.create(name: "Gary Johnson")
2.times { bfd.voting_results.create }

bfd = bf.ballot_form_details.create(name: "Jill Stein")
2.times { bfd.voting_results.create }
