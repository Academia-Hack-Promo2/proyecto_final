class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end
  def new
    @client = Client.new
  end
  def create
    @client = Client.new(permit_params)
    if @client.save
      redirect_to clients_path
    else
      reditect 'new'
    end
  end
  def edit
    @client = Client.find(params[:id])
  end
  def update
    @client = Client.find(params[:id])
    if @client.update(permit_params)
      redirect_to clients_path
    else
      redirect 'new'
    end
  end
  def destroy
    @client = Client.find(params[:id])
    if @client.delete
      redirect_to clients_path
    end
  end
  private
    def permit_params
      params.require(:client).permit(:name, :rif, :phone)
    end
end
