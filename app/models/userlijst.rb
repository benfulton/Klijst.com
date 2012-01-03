class Userlijst < ActiveRecord::Base
  belongs_to :user, :autosave => true
  belongs_to :lijst, :autosave => true
  has_and_belongs_to_many :tings
end
