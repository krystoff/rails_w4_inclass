class Contestant < ActiveRecord::Base
  validates :name, :talent, presence: true
  validates :talent, length: {minimum: 5}
end
