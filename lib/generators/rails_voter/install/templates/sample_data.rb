namespace :rails_voter do
  desc "Add sample data"
  task add_sample_data: :environment do
    RailsVoter::VotingResult.destroy_all
    RailsVoter::ElectionDetail.destroy_all
    RailsVoter::Election.destroy_all

    p "Add sample data"
    p "United States presidential election, 2016 seeds"

    bf = RailsVoter::Election.create(name: "United States presidential election, 2016")

    bfd = bf.election_details.create(name: "Hillary Clinton")
    4.times { bfd.voting_results.create }

    bfd = bf.election_details.create(name: "Donald Trump")
    3.times { bfd.voting_results.create }

    bfd = bf.election_details.create(name: "Gary Johnson")
    2.times { bfd.voting_results.create }

    bfd = bf.election_details.create(name: "Jill Stein")
    2.times { bfd.voting_results.create }
  end
end
