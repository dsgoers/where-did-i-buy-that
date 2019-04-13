# frozen_string_literal: true

module Mutations
  class CreateItem < Mutations::BaseMutation
    null true

    argument :name, String, required: true

    field :item, Types::ItemType, null: true
    field :errors, [String], null: false

    def resolve(name:)
      {
        item: Item.create!(
          name: name
        )
      }
    end
  end
end
