class ArticleScheduler
  def self.call(article, date = Date.today)
    article_schedule = ArticleSchedule.new
    article_schedule.article = article
    article_schedule.live_week = week_from_date(date)
    article_schedule.save!
    self
  end

  private

  def self.week_from_date(date)
    date.to_time.strftime('%V').to_i
  end
end
