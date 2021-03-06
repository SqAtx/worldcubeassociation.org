# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
  end

  def delegates
    @senior_delegates = User.where(delegate_status: "senior_delegate")
    @delegates_without_senior_delegates = User.where(delegate_status: ["candidate_delegate", "delegate"], senior_delegate: nil)
  end

  def organizations
  end

  def score_tools
  end

  def logo
  end

  def wca_workbook_assistant
  end

  def wca_workbook_assistant_versions
  end

  def robots
    respond_to :txt
  end
end
