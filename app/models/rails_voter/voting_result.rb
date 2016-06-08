module RailsVoter
  class VotingResult < ActiveRecord::Base
    belongs_to :ballot_form_detail
  end
end
