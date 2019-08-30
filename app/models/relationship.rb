class Relationship < ApplicationRecord
      belongs_to :location, class_name: "User"
      belongs_to :place_, class_name: "Place"
end
