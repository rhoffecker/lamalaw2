class Document < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  has_one :opp_party
end
