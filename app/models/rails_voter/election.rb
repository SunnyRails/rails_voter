module RailsVoter
  class Election < ActiveRecord::Base
    has_many :election_details

    accepts_nested_attributes_for(
      :election_details,
      reject_if: proc { |bfd| bfd["name"].blank? },
      allow_destroy: true
    )

    validates :name, presence: true
  end
end
