class AddNotNullToProclamations < ActiveRecord::Migration
  def up  
    
    #ALTER TABLE x ALTER COLUMN y SET NOT NULL;

    execute <<-SQL
      ALTER TABLE proclamations
        ALTER COLUMN user_id
        SET NOT NULL;
    SQL
  end
      
  
  def down
    execute <<-SQL
        ALTER TABLE proclamations
          ALTER COLUMN user_id
          DROP NOT NULL;
    SQL
  end
end
