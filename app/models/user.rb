class User < ActiveRecord::Base
  acts_as_versioned
  acts_as_audited
end
