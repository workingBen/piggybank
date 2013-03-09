class User < ActiveRecord::Base
  attr_accessible :type

  # types
  GRANTOR      = 0
  BENEFICIARY  = 1
  CONTRIBUTOR  = 2

  validates_presence_of :type

  def self.by_grantor;       where(type: GRANTOR) end
  def self.by_beneficiary; where(type: BENEFICIARY) end
  def self.by_contributor;  where(type: CONTRIBUTOR) end
  def self.by_investor;  where("type in %w(#{GRANTOR}, #{CONTRIBUTOR})") end
  def grantor?;       type == User::GRANTOR end
  def beneficiary?; type == User::BENEFICIARY end
  def contributor?;  type == User::CONTRIBUTOR end
  def investor?;  (type == User::CONTRIBUTOR || type == User::GRANTOR) end

end
