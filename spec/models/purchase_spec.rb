# frozen_string_literal: true

require 'rails_helper'

describe Purchase do
  it 'requires a group' do
    expect(described_class.create.errors[:store]).to include("can't be blank")
  end

  it 'requires a user' do
    expect(described_class.create.errors[:user]).to include("can't be blank")
  end

  it 'requires a group' do
    expect(described_class.create.errors[:item]).to include("can't be blank")
  end

  it 'requires a user' do
    expect(described_class.create.errors[:timestamp])
      .to include("can't be blank")
  end

  it 'requires a group' do
    expect(described_class.create.errors[:price]).to include("can't be blank")
  end
end
