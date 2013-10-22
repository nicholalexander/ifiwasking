class AddForiegnKeyToVotes < ActiveRecord::Migration
  def up
    execute <<-SQL
      ALTER TABLE votes
        ADD CONSTRAINT fk_votes_proclamations
        FOREIGN KEY (proclamation_id)
        REFERENCES proclamations(id);
    SQL
  end

  def down
    execute <<-SQL
        ALTER TABLE votes
        DROP FOREIGN KEY fk_votes_proclamations;
    SQL
  end

end
