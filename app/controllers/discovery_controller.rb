class DiscoveryController < ApplicationController
  # GET /discovery
  # GET /discovery.json
  def index
    @end_points = EndPoint.all
    
    @discovery = {
      changeset: "v1",
      contact: "contact@seeclickfix.com",
      key_service: "No keys needed at this point",
      endpoints: @end_points
    }
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @discovery }
      format.xml { render xml: @discovery.to_xml(:root => 'discovery', :skip_types => true, :skip_instruct => true, :indent => 2) }
    end
  end


end
