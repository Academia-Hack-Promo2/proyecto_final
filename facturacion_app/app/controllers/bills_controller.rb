class BillsController < ApplicationController
  def index
    @bills = nil
    if params[:status].nil?
      @bills = Bill.all
    else
      @bills = Bill.where("status" => params[:status])
    end
  end
  def show
    @bill = Bill.find(params[:id])
  end
  def new
    @bill = Bill.new
    @client = Client.find(params[:client_id])
    @service = Service.find(params[:service_id])
    @bill.client_rif = @client.rif
    @bill.client_name = @client.name
    @bill.client_phone = @client.phone
    @bill.client_email = @client.email
    @bill.client_id = @client.id
    @bill.service_id = @service.id
    @bill.detail = @service.details
    @bill.tax = 12 
  end
  def create
    @bill = Bill.new(permit_params)
    if @bill.save
      redirect_to bills_path
    else
      render 'new'
    end
  end
  def edit
    @bill = Bill.find(params[:id])
  end
  def update
    @bill = Bill.find(params[:id])
    if @bill.update(permit_params)
      redirect_to bills_path
    else
      render 'edit'
    end
  end
  def destroy
    @bill = Bill.find(params[:id])
    if @bill.delete
      redirect_to bills_path
    end
  end
  private
    def permit_params
      params.require(:bill).permit(:bill_number, :bill_control, :payment_date, :issue_date, :client_rif, :client_name, :client_phone, :client_email, :quantity, :unit_price, :tax, :bill_total, :status, :detail)
    end
end
