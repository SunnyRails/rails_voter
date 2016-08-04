module RailsVoter
  module ApplicationHelper
    def embed_ballot_form(id)
      content_tag(:div, nil) do
        content_tag(
          :iframe,
          nil,
          src: rails_voter.vote_election_path(id),
        )
      end
    end

    def embed_voting_result(id)
      content_tag(:div, nil) do
        content_tag(
          :iframe,
          nil,
          src: rails_voter.show_result_election_path(id),
        )
      end
    end
  end
end
