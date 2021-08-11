class CardsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  # before_action :authenticate_user

  def index
    cards = Card.all
    render json: cards
  end

  def show
    card_id = params["id"]
    card = Card.find(card_id)
    render json: card
  end

  def create
    card = Card.new(
      name: params["name"],
      sound: params["sound"],
      image: params["image"]
      # user_id: current_user.id
    )
    if card.save
      render json: card
    else
      render json: {errors: card.errors.full_messages},
      status: 422
    end
  end

  def update
    card_id = params["id"]
    card = Card.find_by(id: card_id)

    card.name = params["name"] || card.name
    card.sound = params["sound"] || card.sound
    card.image = params["image"] || card.image

    if card.save
      render json: card.as_json
    else
      render json: {errors: card.errors.full_messages},
      status: 422
    end
  end

  def destroy
    card_id = params["id"]
    card = Card.find_by(id: card_id)
    card.destroy
    render json: {message: "card was deleted-uh successfullay"}
  end
end
