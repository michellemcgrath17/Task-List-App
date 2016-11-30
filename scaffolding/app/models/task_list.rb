class TaskList < ActiveRecord::Base
  has_many :tasks
  def to_s
    name
  end
  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
