class NotesController < ApplicationController
  def show
  end

  def new
  	@note = Note.new
  end

  def index
  	@notes = Note.all
  end

  def note_params
    params.require(:note).permit(:text, :topic, :description, :img_url)
  end
end
