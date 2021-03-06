class Picture < ActiveRecord::Base
  scope :newest_first, -> { order("created_at  DESC")}
  scope :most_recent_five, -> { newest_first.limit(5)}
  
  def self.created_before(time)
    where("created_at <?", time)
  end

  def change
    create_table :pictures do |t|
      t.string :artist
      t.string :title
      t.string :url

      t.timestapms
    end 
  end
end
