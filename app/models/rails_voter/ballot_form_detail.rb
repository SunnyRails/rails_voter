module RailsVoter
  class BallotFormDetail < ActiveRecord::Base
    belongs_to :ballot_form
    has_many :voting_results
  end
end
