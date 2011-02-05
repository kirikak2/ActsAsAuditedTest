class CreateIssueVersioned < ActiveRecord::Migration
  def self.up
    Issue.create_versioned_table
  end

  def self.down
    Issue.drop_versioned_table
  end
end
