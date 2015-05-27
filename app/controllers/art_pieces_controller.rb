class ArtPiecesController < ApplicationController
  before_action :set_art_piece, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @art_pieces = ArtPiece.all
    respond_with(@art_pieces)
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
    redirect_to registro_path
  end

  def update
    @art_piece.update(art_piece_params)
    redirect_to registro_path
  end

  def destroy
    @art_piece.destroy
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
