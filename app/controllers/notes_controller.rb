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

    def checked_status
        @note = Note.find(params[:note_id])

        if @note.is_checked != nil
            @note.is_checked = nil
        else
            @note.is_checked = "true"
        end

        @note.save
    end

    def edit 
        @note = Note.find(params[:id])
    end

    def update 
        @note = Note.find(params[:id]).update(note_params)
        redirect_to root_path
    end

    private
    def note_params
        params.require(:note).permit(:body, :homework_id)
    end
end
