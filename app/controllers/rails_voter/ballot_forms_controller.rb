require_dependency "rails_voter/application_controller"
require_dependency "decent_exposure"

module RailsVoter
  class BallotFormsController < ApplicationController
    expose :ballot_forms, -> { BallotForm.all }
    expose :ballot_form, model: RailsVoter::BallotForm

    def create
      if ballot_form.save
        redirect_to ballot_forms_path
      else
        render :new
      end
    end

    def update
      if ballot_form.update(ballot_form_params)
        redirect_to ballot_forms_path
      else
        render :new
      end
    end

    private

    def ballot_form_params
      params.require(:ballot_form).permit(:name)
    end
  end
end
