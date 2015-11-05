class AnnouncementsController < ApplicationController
  before_action :require_signed_in!, only: [:new, :edit, :destroy, :update, :create]
  before_action :set_announcement, only: [:show, :edit, :update, :destroy, :index]

  # GET /announcements
  # GET /announcements.json

  def index
    # if params[:filename]
 #      send_file "app/assets/images/#{params[:filename]}",
 #                filename: params[:filename],
 #                type: params[:filename][/\.[^.]*$/],
 #                disposition: 'attachment',
 #                x_sendfile: true
 #    else
 #      flash.now[:errors] = ["No filename submitted."]
 #      render nothing: true, status: 400
 #    end

  end




  # GET /announcements/1
  # GET /announcements/1.json
  def show
  end

  # GET /announcements/new
  def new
    @announcement = current_user.announcements.build()
  end

  # GET /announcements/1/edit
  def edit
  end

  # POST /announcements
  # POST /announcements.json
  def create
    @announcement = current_user.announcements.build(permitted_params.announcement)

    respond_to do |format|
      if @announcement.save
        format.html { redirect_to @announcement, notice: 'Announcement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @announcement }
      else
        flash.now[:error] = @announcement.errors.full_messages
        format.html { render action: 'new' }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /announcements/1
  # PATCH/PUT /announcements/1.json
  def update
    respond_to do |format|
      if @announcement.update(permitted_params.announcement)
        format.html { redirect_to @announcement, notice: 'Announcement was successfully updated.' }
        format.json { head :no_content }
      else
        flash.now[:error] = @announcement.errors.full_messages
        format.html { render action: 'edit' }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announcements/1
  # DELETE /announcements/1.json
  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html { redirect_to announcements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_announcement
    @announcement = Announcement.find(params[:id])
  end

end
