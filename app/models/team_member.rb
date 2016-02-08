class TeamMember < ActiveRecord::Base
  belongs_to :team
  belongs_to :member, class_name: 'Employee', foreign_key: :member_id
end
