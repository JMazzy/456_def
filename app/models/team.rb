class Team < ActiveRecord::Base
  belongs_to :owner, class_name: 'Employee', foreign_key: :owner_id

  has_many :members, through: :team_members, class_name: 'Employee', foreign_key: :member_id
  has_many :team_members, foreign_key: :team_id

  has_many :progress_reports
end
