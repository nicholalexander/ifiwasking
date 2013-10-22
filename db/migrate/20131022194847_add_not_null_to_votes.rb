class AddNotNullToVotes < ActiveRecord::Migration
  def up 
    execute <<-SQL
      ALTER TABLE votes
        ALTER COLUMN user_id
        SET NOT NULL;
    SQL
  end
      
  
  def down
    execute <<-SQL
        ALTER TABLE votes
          ALTER COLUMN user_id
          DROP NOT NULL;
    SQL
  end
end
