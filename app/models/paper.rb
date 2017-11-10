class Paper < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 1 }
  validates :venue, presence: true,
                    length: { minimum: 1 }
  validates :year, presence: true
end
