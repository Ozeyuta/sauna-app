class ProtosController < ApplicationController
  def index 
    @protos = Proto.all.order(created_at: :desc)
  end

  def new
    @proto = Proto.new
  end

  def create
    @proto = Proto.create(proto_params)
    if @proto.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @proto = Proto.find(params[:id])
  end

  def edit
    @proto = Proto.find(params[:id])
  end

  def update
    @proto = Proto.find(params[:id])
    @proto.update(proto_params)
    if @proto.update(proto_params)
      redirect_to proto_path
    else
      render :edit
    end
  end

  def destroy
    @proto = Proto.find(params[:id])
    if @proto.user_id == current_user.id
      @proto.destroy
    end
    redirect_to root_path
  end
  
  private

  def proto_params
    params.require(:proto).permit(:image, :title, :post_text, :sauna_id, :cold_bath_id, :loury_id, :auto_loury_id, :self_loury_id, :outside_id, :invigorate_id, :water_id).merge(user_id: current_user.id)
  end
end
