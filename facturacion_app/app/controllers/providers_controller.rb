class ProvidersController < ApplicationController
  def index
    @providers = Provider.all
  end
  def new
    @provider = Provider.new
  end
  def create
    @provider = Provider.new(permit_params)
    if @provider.save
      redirect_to providers_path
    else
      render 'new'
    end
  end
  def edit
    @provider = Provider.find(params[:id])
  end
  def update
    @provider = Provider.find(params[:id])
    if @provider.update(permit_params)
      redirect_to providers_path
    else
      render 'edit'
    end
  end
  def destroy
    @provider = Provider.find(params[:id])
    if @provider.delete
      redirect_to providers_path
    end
  end
  private
    def permit_params
      params.require(:provider).permit(:name, :rif, :phone)
    end
end
