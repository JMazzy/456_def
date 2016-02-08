class Employee < ActiveRecord::Base
  has_many :teams
  has_many :progress_reports
  has_many :owned_teams, class_name: 'Team'
  has_many :team_members
  has_many :teams, through: :team_members
end
