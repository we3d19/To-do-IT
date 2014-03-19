class Task < ActiveRecord::Base

  attr_accessible :completed, :list_id, :name
    belongs_to :list, :foreign_key => "list_id"

    validates :name, :presence => true
end

