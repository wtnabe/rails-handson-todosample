class Todo < ActiveRecord::Base
  has_many :notes, dependent: :destroy

  accepts_nested_attributes_for :notes, reject_if: :new_record?
end
