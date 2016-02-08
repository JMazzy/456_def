class ForeignKeys < ActiveRecord::Migration
  def change
    remove_column :teams, :owner_id
    add_foreign_key :teams, :employees, column: :owner_id

    remove_column :progress_reports, :author_id
    remove_column :progress_reports, :team_id
    add_foreign_key :progress_reports, :employees, column: :author_id
    add_foreign_key :progress_reports, :teams

    remove_column :team_members, :member_id
    remove_column :team_members, :team_id
    add_foreign_key :team_members, :employees, column: :member_id
    add_foreign_key :team_members, :teams
  end
end
