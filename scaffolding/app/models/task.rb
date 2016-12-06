class Task < ActiveRecord::Base
  belongs_to :task_list
  belongs_to :user

scope :completed, -> {where(is_completed: true).order("updated_at desc")}
scope :pending, -> {where(is_completed: false).order("updated_at asc")}
scope :is_private, -> {where(is_private: true)}

validates :title, :task_list, :due_date, presence: true
validates :priority, numericality: true
validates :priority, inclusion: {in:1..10}
end
