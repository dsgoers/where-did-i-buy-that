# frozen_string_literal: true

class Store < ApplicationRecord
  has_many :purchases, dependent: :destroy

  validates :name, presence: true
end
