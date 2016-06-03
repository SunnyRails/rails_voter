module RailsVoter
  class BallotForm < ActiveRecord::Base
    validates :name, presence: true
  end
end
