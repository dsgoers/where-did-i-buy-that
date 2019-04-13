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

  it 'sets timestamp' do
    time = DateTime.current
    allow(DateTime).to receive(:current).and_return(time)

    expect(described_class.create.timestamp).to eq(time)
  end

  it 'requires a group' do
    expect(described_class.create.errors[:price]).to include("can't be blank")
  end
end
