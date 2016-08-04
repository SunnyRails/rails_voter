module RailsVoter
  module ApplicationHelper
    def embed_ballot_form(id)
      content_tag(:div, nil, class: "embed-container") do
        content_tag(
          :iframe,
          nil,
          src: rails_voter.vote_election_path(id),
        )
      end
    end
  end
end
