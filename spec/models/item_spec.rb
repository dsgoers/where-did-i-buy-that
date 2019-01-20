# frozen_string_literal: true

require 'rails_helper'

describe Item do
  it 'requires a name' do
    expect(described_class.create.errors[:name]).to include("can't be blank")
  end
end
