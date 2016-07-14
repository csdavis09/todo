class List < ActiveRecord::Base
  belongs_to :employee
  has_many :tasks

  has_many :incomplete_tasks, ->{where(completed_at: nil)}, class_name: "Task"

  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
end
