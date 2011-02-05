class AuditsController < ApplicationController
  def index
    @audits = Audit.order("created_at DESC")

    respond_to do |format|
      format.html
      format.xml { render :xml => @audits }
    end
  end

  def show
    @audit = Audit.find(params[:id])

    respond_to do |format|
      format.html
      format.xml { render :xml => @audit }
    end
  end
end
