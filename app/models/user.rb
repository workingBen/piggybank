class User < ActiveRecord::Base
  attr_accessible :user_type

  # types
  GRANTOR      = 0
  BENEFICIARY  = 1
  CONTRIBUTOR  = 2

  validates_presence_of :user_type

  def self.by_grantor;       where(user_type: GRANTOR) end
  def self.by_beneficiary; where(user_type: BENEFICIARY) end
  def self.by_contributor;  where(user_type: CONTRIBUTOR) end
  def self.by_investor;  where("user_type in %w(#{GRANTOR}, #{CONTRIBUTOR})") end
  def grantor?;       user_type == User::GRANTOR end
  def beneficiary?; user_type == User::BENEFICIARY end
  def contributor?;  user_type == User::CONTRIBUTOR end
  def investor?;  (user_type == User::CONTRIBUTOR || user_type == User::GRANTOR) end

end
