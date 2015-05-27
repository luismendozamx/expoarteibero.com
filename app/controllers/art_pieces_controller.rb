class ArtPiecesController < ApplicationController
  before_action :set_art_piece, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    redirect_to registro_path
  end

  def show
    respond_with(@art_piece)
  end

  def new
    @art_piece = ArtPiece.new
    redirect_to registro_path
  end

  def edit
  end

  def create
    @art_piece = ArtPiece.new(art_piece_params)
    @art_piece.user_id = current_user.id
    @art_piece.save
    flash[:notice] = "Se guardó la información correctamente"
    redirect_to registro_path
  end

  def update
    @art_piece.update(art_piece_params)
    flash[:notice] = "Se guardó la información correctamente"
    redirect_to registro_path
  end

  def destroy
    redirect_to registro_path
  end

  private
    def set_art_piece
      @art_piece = ArtPiece.find(params[:id])
    end

    def art_piece_params
      params.require(:art_piece).permit(:discipline, :title, :date_of, :dimensions, :technique, :description, :quantity, :observations, :exhibit_text, :artist_statement)
    end
end
