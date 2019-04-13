# frozen_string_literal: true

class WhereDidIBuyThatSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
