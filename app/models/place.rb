class Place < ApplicationRecord
    geocoded_by :address
    after_validation :geocode, if: :address_changed
    has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "placeName",
                                  dependent:   :destroy
end
