class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :upvotes
      t.integer :proclamation_id
      t.integer :user_id

    # execute <<-SQL
    #   ALTER TABLE votes
    #     ADD CONSTRAINT fk_votes_proclamations
    #     FOREIGN KEY (proclamation_id)
    #     REFERENCES proclamations(id)
    # SQL

    # execute <<-SQL
    #   ALTER TABLE votes
    #     ADD CONSTRAINT fk_votes_users
    #     FOREIGN KEY (user_id)
    #     REFERENCES users(id)
    # SQL

    end
  end
end
