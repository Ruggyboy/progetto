class Relationship < ApplicationRecord
      belongs_to :location, class_name: "Band"
      belongs_to :place_, class_name: "Place"
end
