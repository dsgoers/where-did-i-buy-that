# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :store
  belongs_to :user
  belongs_to :item

  before_validation :set_timestamp

  validates :store, :user, :item, :timestamp, :price, presence: true

  private

  def set_timestamp
    self.timestamp = DateTime.current
  end
end
