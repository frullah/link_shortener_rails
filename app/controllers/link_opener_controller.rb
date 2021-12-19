class LinkOpenerController < ApplicationController
  def open
    link = Link.find_by(id: params[:id])
    if link
      redirect_to link.url, allow_other_host: true
    else
      render "link_not_found"
    end
  end
end
