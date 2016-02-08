class Team < ActiveRecord::Base
  belongs_to :owner, class_name: 'Employee'

  has_many :members, through: :team_members, class_name: 'Employee'
  has_many :team_members

  has_many :progress_reports
end
