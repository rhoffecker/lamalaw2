class OppParty < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  has_many :documents
end
