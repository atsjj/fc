class Team < ActiveRecord::Base
  has_and_belongs_to_many :seasons
  has_many :matches, :as => :home_team
  has_many :matches, :as => :visiting_team
end
