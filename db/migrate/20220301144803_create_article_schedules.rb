class CreateArticleSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :article_schedules do |t|
      t.integer :article_id
      t.integer :live_week
    end
  end
end
