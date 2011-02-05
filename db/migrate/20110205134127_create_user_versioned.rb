class CreateUserVersioned < ActiveRecord::Migration
  def self.up
    User.create_versioned_table
  end

  def self.down
    User.drop_versioned_table
  end
end
