# frozen_string_literal: true

require 'rails_helper'

describe GroupPermission do
  it 'requires a group' do
    expect(described_class.create.errors[:group]).to include("can't be blank")
  end

  it 'requires a user' do
    expect(described_class.create.errors[:user]).to include("can't be blank")
  end
end
