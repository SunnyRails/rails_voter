class SampleFormController < ApplicationController
  before_action :content, only: [:index, :create]

  def create
    render :index
  end

  private

  def params_sample_form
    params.permit(:content)
  end

  def content
    @content = params_sample_form["content"].present? ? params_sample_form["content"] : "No content"
  end
end
