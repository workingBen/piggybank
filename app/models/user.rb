class User < ActiveRecord::Base
  # types
  GRANTOR      = 0
  BENEFICIARY  = 1
  CONTRIBUTOR  = 2

  # attr_accessible :title, :body
end
