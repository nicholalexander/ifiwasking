class AddAnotherForiegnKeyToVotes < ActiveRecord::Migration
 def up
    execute <<-SQL
      ALTER TABLE votes
        ADD CONSTRAINT fk_users_proclamations
        FOREIGN KEY (user_id)
        REFERENCES users(id);
    SQL
  end

  def down
    execute <<-SQL
        ALTER TABLE votes
        DROP FOREIGN KEY fk_users_proclamations;
    SQL
  end
end
