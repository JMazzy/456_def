class MoreKeys < ActiveRecord::Migration
  def change
    add_column :team_members, :team_id, :integer
    add_column :team_members, :member_id, :integer

    add_column :team_progresses, :team_id, :integer
    add_column :team_progresses, :progress_report_id, :integer
  end
end
