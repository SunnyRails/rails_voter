module RailsVoter
  class BallotFormDetail < ActiveRecord::Base
    belongs_to :ballot_form
  end
end
