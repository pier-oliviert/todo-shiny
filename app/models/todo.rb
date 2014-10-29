class Todo < ActiveRecord::Base
  scope :session, ->(id) {where(session_id: id)}
  scope :active, -> { where(done: false) }
end
