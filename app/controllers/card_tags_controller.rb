class CardTagsController < ApplicationController
  def create
    card_tag = CardTag.new(
      card_id: params[:card_id],
      tag_id: params[:tag_id]
    )
    if card_tag.save
      render json: {message: "card tag created"}
    else
      render json: { errors: @card_tag.errors.full_messages }, status: 406
    end
  end
  
  def index
    card_tag = CardTag.all
    render json: card_tag
  end
  #show
  def show
    card_tag = CardTag.find_by(id: params[:id])
    render json: card_tag
  end
  #destroy
  def destroy
    card_tag = CardTag.find_by(id: params[:id])
    card_tag.destroy
    render json: {message: "card was deleted-uh successfullay"}
  end
end
