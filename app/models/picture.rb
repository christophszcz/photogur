class Picture < ActiveRecord::Base
	scope :newest_first, -> { order("created_at DESC") }
  scope :most_recent_two, -> { newest_first.limit(2) } 
  def self.created_before(time)
    where("created_at < ?", time) 
  end
end

