class NotesController < ApplicationController
    def new 
        @note = Note.new
    end

    def create 
        @note = Note.new(note_params)

        respond_to do |format| 
            if @note.save
                format.js 
                format.html { redirect_to root_url, notice: 'added note' }
                format.json { render :show, status: :created, location: @note }
            end
        end
    end

    private
    def note_params
        params.require(:note).permit(:body, :homework_id)
    end
end
