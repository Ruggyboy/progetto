class Place < ApplicationRecord
    #after_validation :geocode
    has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "placeName",
                                  dependent:   :destroy
end
