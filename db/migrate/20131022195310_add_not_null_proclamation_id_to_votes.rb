class AddNotNullProclamationIdToVotes < ActiveRecord::Migration
  def up 
    execute <<-SQL
      ALTER TABLE votes
        ALTER COLUMN proclamation_id
        SET NOT NULL;
    SQL
  end
      
  
  def down
    execute <<-SQL
        ALTER TABLE votes
          ALTER COLUMN proclamation_id
          DROP NOT NULL;
    SQL
  end
end
