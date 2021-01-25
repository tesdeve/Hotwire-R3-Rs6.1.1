class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.text :body
      t.integer :likes
      t.integer :retweets

      t.timestamps
    end
  end
end
