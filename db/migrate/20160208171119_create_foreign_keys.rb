class CreateForeignKeys < ActiveRecord::Migration
  def change
    add_column :teams, :owner_id, :integer

    add_column :progress_reports, :author_id, :integer
    add_column :progress_reports, :team_id, :integer
  end
end
