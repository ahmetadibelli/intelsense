class CreateFollowings < ActiveRecord::Migration[5.2]
  def change
    create_table :followings do |t|
      t.bigint :follower_id, index: true, foreign_key: true
      t.bigint :followed_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
