# frozen_string_literal: true

class Store < ApplicationRecord
  has_many :purchases

  validates :name, presence: true
end
