class Employee < ActiveRecord::Base
  has_many :progress_reports, foreign_key: :author_id
  has_many :owned_teams, class_name: 'Team', foreign_key: :owner_id
  has_many :team_members, foreign_key: :member_id
  has_many :teams, through: :team_members, foreign_key: :member_id
end
