# frozen_string_literal: true

class Group < ApplicationRecord
  has_many :group_permissions, dependent: :destroy

  validates :name, presence: true
end
