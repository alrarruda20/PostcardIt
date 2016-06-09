class PostcardsController < ApplicationController
  def index
    @postcards = Postcard.all
  end

  def show
    @postcard = Postcard.find(params[:id])
  end

  def new
    @postcard = Postcard.new
  end

  def create
    @postcard = Postcard.new
    @postcard.message = params[:message]
    @postcard.photo_id = params[:photo_id]
    @postcard.recipient_id = params[:recipient_id]

    if @postcard.save
      redirect_to "/postcards", :notice => "Postcard created successfully."
    else
      render 'new'
    end
  end

  def edit
    @postcard = Postcard.find(params[:id])
  end

  def update
    @postcard = Postcard.find(params[:id])
    @postcard.message = params[:message]
    @postcard.photo_id = params[:photo_id]
    @postcard.recipient_id = params[:recipient_id]

    if @postcard.save
      redirect_to "/postcards", :notice => "Postcard updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @postcard = Postcard.find(params[:id])

    @postcard.destroy

    redirect_to "/postcards", :notice => "Postcard deleted."
  end
end
