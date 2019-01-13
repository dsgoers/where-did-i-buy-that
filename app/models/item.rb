# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :purchases, dependent: :destroy

  validates :name, presence: true
end
