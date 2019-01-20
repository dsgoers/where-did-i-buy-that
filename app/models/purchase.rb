# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :store
  belongs_to :user
  belongs_to :item

  validates :store, :user, :item, :timestamp, :price, presence: true
end
