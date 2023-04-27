class ProtosController < ApplicationController
  def index 
    @protos = Proto.all
  end

  def new
    @proto = Proto.new
  end

  def create
    @proto = Proto.create(proto_params)
  end

  private

  def proto_params
    params.require(:proto).permit(:image, :title, :post_text, :sauna_id, :cold_bath_id, :loury_id, :auto_loury_id, :self_loury_id, :outside_id, :invigorate_id, :water_id).merge(user_id: current_user.id)
  end
end
