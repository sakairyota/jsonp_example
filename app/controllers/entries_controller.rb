class EntriesController < ApplicationController
  def show
    @entry = {id: params[:id], title: "entry#{params[:id]}", content: "This is content ##{params[:id]}"}
    respond_to do |format|
      format.json { render json: @entry, callback: params[:callback]}
    end
  end
end
