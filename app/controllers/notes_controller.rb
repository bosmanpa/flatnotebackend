class NotesController < ApplicationController

    def index
        notes = Note.all
        render json: notes
    end

    def show
        note = Note.find(params[:id])
        render json: note
    end

    def create
        note = Note.create(note_params)
        render json: note
    end

    def destroy
        note = Note.find(params[:id])
        note.delete()
        render json: note
    end
    
    private
    def note_params
        params.require(:note).permit(:title, :body, :user_id)
    end
end