# frozen_string_literal: true

class User < ApplicationRecord
  has_many :group_permissions, dependent: :destroy
  has_many :purchases, dependent: :destroy

  validates :name, presence: true
end
