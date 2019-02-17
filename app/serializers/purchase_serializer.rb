# frozen_string_literal: true

class PurchaseSerializer < BaseSerializer
  attributes :id, :timestamp, :price

  belongs_to :store
  belongs_to :user
  belongs_to :item
end
