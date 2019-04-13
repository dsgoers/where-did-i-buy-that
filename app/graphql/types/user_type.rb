# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :name, String, null: false
    field :purchases, [PurchaseType], null: false
  end
end
