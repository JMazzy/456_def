class CreateTeamProgresses < ActiveRecord::Migration
  def change
    create_table :team_progresses do |t|

      t.timestamps null: false
    end
  end
end
