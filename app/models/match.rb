class Match < ActiveRecord::Base
  belongs_to :season
  belongs_to :home_team, class_name: 'Team'
  belongs_to :visiting_team, class_name: 'Team'
end
