# frozen_string_literal: true

module Types
  class PurchaseType < Types::BaseObject
    field :id, ID, null: false
    field :store, StoreType, null: false
    field :user, UserType, null: false
    field :item, ItemType, null: false
    field :timestamp, String, null: false
    field :price, Float, null: false
  end
end
