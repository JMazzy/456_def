class NoMoreTeamProgresses < ActiveRecord::Migration
  def change
    drop_table :team_progresses
  end
end
