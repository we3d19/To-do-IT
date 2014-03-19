class List < ActiveRecord::Base
#  attr_accessible :name
  has_many :tasks, :dependent => :destroy

  validates :name, :presence => true
  validates_uniqueness_of :name, :on => :create, :message => "must be unique"

  def completed_tasks
    tasks.where(:completed => true).order("updated_at DESC")
  end
end
