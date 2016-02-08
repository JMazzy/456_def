class ProgressReport < ActiveRecord::Base
  belongs_to :author, class_name: 'Employee', foreign_key: :author_id
  belongs_to :team
end
