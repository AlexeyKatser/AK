class NotesController < ApplicationController

  before_action :set_note, only: [:show, :update, :edit, :destroy] 

  def show
    puts 'show'
  end

  def new
  	@note = Note.new
  end

  def index
    puts 'index'
  	@notes = Note.all
  end

  def destroy
    @note.destroy
  end

  def create  
  	@note = Note.new(note_params)
  	if @note.save
      flash.notice = I18n.t('controllers.notes.created')
  		redirect_to action: 'index'
  	else
  		render :create
  	end
  end

  def update
    if @note.update(note_params)
      flash[:notice] = I18n.t('controllers.notes.updated')
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:text, :topic, :description, :img_url)
  end
end
