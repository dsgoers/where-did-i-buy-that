# frozen_string_literal: true

class StoresController < ApplicationController
  def index
    load_stores

    render json: @stores
  end

  def show; end

  def create; end

  def update; end

  def destroy; end

  private

  def load_stores
    @stores = Store.all
  end
end
