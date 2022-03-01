class ArticleSchedule < ApplicationRecord
  belongs_to :article
  
  def self.current
    where(live_week: current_week).map(&:article)
  end

  def self.current_week
    Time.now.strftime('%V').to_i
  end
end
