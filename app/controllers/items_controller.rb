# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    load_items

    render json: @items
  end

  def show
    load_item

    render json: @item
  end

  def create
    render json: create_item, status: :created
  end

  private

  def load_items
    @items = Item.all
  end

  def load_item
    @item = Item.find(params[:id])
  end

  def create_item
    Item.create!(name: params[:data][:attributes][:name])
  end
end
