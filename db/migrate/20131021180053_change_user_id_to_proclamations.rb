class ChangeUserIdToProclamations < ActiveRecord::Migration
  def up  
    #add a foreign key
    execute <<-SQL
      ALTER TABLE proclamations
        ADD CONSTRAINT fk_proclamations_users
        FOREIGN KEY (user_id)
        REFERENCES users(id)
    SQL
  end
      
  
  def down
    execute <<-SQL
        ALTER TABLE proclamations
        DROP FOREIGN KEY fk_proclamations_users
    SQL
  end

end
