class DownloadsController < ApplicationController
  # before_action :set_download, only: [:show, :edit, :update, :destroy]

  # GET /downloads
  # GET /downloads.json
  
  def index
    if params[:filename]
      send_file "app/assets/images/#{params[:filename]}",
                filename: params[:filename],
                type: params[:filename][/\.[^.]*$/],
                disposition: 'attachment',
                x_sendfile: true 
    else
      render nothing: true, status: 400
    end
  end


end
