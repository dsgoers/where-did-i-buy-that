# frozen_string_literal: true

class Group < ApplicationRecord
  has_many :group_permissions

  validates :name, presence: true
end
