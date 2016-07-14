class Task < ActiveRecord::Base
  belongs_to :list
  validates :name, presence: true

  def completed?
    completed_at.present?
  end

  def completed=(value)
    puts value
    self[:completed_at] = Time.now() if value == "1"
  end

end


