class TagsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    tags = Tag.all
    render json: tags
  end

  def show
    tag_id = params["id"]
    tag = Tag.find(tag_id)
    render json: tag
  end

  def create
    tag = Tag.create(
      name: params["name"]
    )
    if tag.save
      render json: tag
    else
      render json: {errors: tag.errors.full_messages},
      status: 422
    end
  end

  def update
    tag_id = params["id"]
    tag = Tag.find_by(id: tag_id)

    tag.name = params["name"] || tag.name

    if tag.save
      render json: tag.as_json
    else
      render json: {errors: tag.errors.full_messages},
      status: 422
    end
  end

  def destroy
    tag_id = params["id"]
    tag = Tag.find_by(id: tag_id)
    tag.destroy
    render json: {message: "tag was deleted-uh successfullay"}
  end
end
