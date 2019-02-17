# frozen_string_literal: true

class PurchasesController < ApplicationController
  def index
    load_purchases

    render json: @purchases
  end

  def show
    load_purchase

    render json: @purchase
  end

  def create
    render json: create_purchase, status: :created
  end

  private

  def load_purchases
    @purchases = Purchase.all
  end

  def load_purchase
    @purchase = Purchase.find(params[:id])
  end

  def create_purchase
    attributes = params[:data][:attributes]

    Purchase.create!(store_id: attributes[:store_id],
                     item_id: attributes[:item_id],
                     user_id: attributes[:user_id],
                     timestamp: attributes[:timestamp],
                     price: attributes[:price])
  end
end
