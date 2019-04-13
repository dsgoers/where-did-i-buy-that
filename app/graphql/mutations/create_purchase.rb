# frozen_string_literal: true

module Mutations
  class CreatePurchase < Mutations::BaseMutation
    argument :price, Float, required: true
    argument :store_id, ID, required: true
    argument :user_id, ID, required: true
    argument :item_id, ID, required: true

    field :purchase, Types::PurchaseType, null: true
    field :errors, [String], null: false

    def resolve(price:, store_id:, user_id:, item_id:)
      {
        purchase: Purchase.create!(
          price: price,
          store_id: store_id,
          user_id: user_id,
          item_id: item_id
        )
      }
    end
  end
end
