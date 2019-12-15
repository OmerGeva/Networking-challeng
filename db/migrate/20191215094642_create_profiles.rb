class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :current_role
      t.string :description
      t.string :github_username
      t.string :slack_username
      t.string :email

      t.timestamps
    end
  end
end
