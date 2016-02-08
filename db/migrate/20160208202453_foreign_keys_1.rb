class ForeignKeys1 < ActiveRecord::Migration
  def change
    add_column :teams, :owner_id, :integer
    add_foreign_key :teams, :employees, column: :owner_id

    add_column :progress_reports, :author_id, :integer
    add_foreign_key :progress_reports, :employees, column: :author_id

    add_column :progress_reports, :team_id, :integer
    add_foreign_key :progress_reports, :teams

    add_column :team_members, :member_id, :integer
    add_foreign_key :team_members, :employees, column: :member_id

    add_column :team_members, :team_id, :integer
    add_foreign_key :team_members, :teams
  end
end
