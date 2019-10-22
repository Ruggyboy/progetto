class Band < ApplicationRecord
  belongs_to :user
  has_one :active_relationships, class_name:  "Relationship",
                                  foreign_key: "groupLocation",
                                  dependent:   :destroy

  validates :name,  presence: true, uniqueness: true, length: { maximum: 35 }
end
