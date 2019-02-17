# frozen_string_literal: true

class StoresController < ApplicationController
  def index
    load_stores

    render json: @stores
  end

  def show
    load_store

    render json: @store
  end

  private

  def load_stores
    @stores = Store.all
  end

  def load_store
    @store = Store.find(params[:id])
  end
end
