separator = ">>>>>>>><<<<<<<<<<"

p separator

  ballot_form_id = 0
  ballot_form_detail_id = 0

5.times do
  ballot_form_id += 1
  RailsVoter::BallotForm.create(name:Faker::StarWars.planet)
    2.times do
      ballot_form_detail_id += 1
      RailsVoter::BallotFormDetail.create(name:Faker::StarWars.character,ballot_form_id:ballot_form_id)
        3.times do
          RailsVoter::VotingResult.create(ballot_form_detail_id: ballot_form_detail_id)
        end
    end
end

message = "5 ballot forms, 10 ballot form details and 30 voting results created."
p separator
p message
p separator
