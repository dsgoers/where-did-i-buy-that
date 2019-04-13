# frozen_string_literal: true

module Mutations
  class CreateStore < Mutations::BaseMutation
    argument :name, String, required: true

    field :store, Types::StoreType, null: true
    field :errors, [String], null: false

    def resolve(name:)
      {
        store: Store.create!(
          name: name
        )
      }
    end
  end
end
