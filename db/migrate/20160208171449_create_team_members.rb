class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|

      t.timestamps null: false
    end
  end
end
