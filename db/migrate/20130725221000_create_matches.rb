class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :start
      t.time :duration
      t.integer :home_score
      t.integer :visitor_score
      t.references :season, index: true
      t.references :home_team, index: true
      t.references :visiting_team, index: true

      t.timestamps
    end
  end
end
