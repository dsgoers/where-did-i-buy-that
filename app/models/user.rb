# frozen_string_literal: true

class User < ApplicationRecord
  has_many :group_permissions
  has_many :purchases

  validates :name, presence: true
end
