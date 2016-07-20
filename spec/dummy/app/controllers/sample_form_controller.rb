class SampleFormController < ApplicationController
  def create
    @content = params_sample_form
    render :index
  end

  private

  def params_sample_form
    params.permit(:content)
  end
end
