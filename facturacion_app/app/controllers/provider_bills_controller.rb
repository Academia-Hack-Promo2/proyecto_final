class ProviderBillsController < ApplicationController
	def index
    @provider_bills = nil
    if params[:status].nil?
      @provider_bills = ProviderBill.all
    else
      @provider_bills = ProviderBill.where("status" => params[:status])
    end
  end
  def new
    @provider_bill = ProviderBill.new
    @provider_bill.provider_id = params[:provider_id]
  end
  def create
    @provider_bill = ProviderBill.new
    if @provider_bill.save
      redirect_to provider_bills_path
    else
      render 'new'
    end
  end
  def edit
    @provider_bill = ProviderBill.find(params[:id])
  end
  def update
    @provider_bill = ProviderBill.find(params[:id])
    if @provider_bill.update(permit_params)
      redirect_to provider_bills_path
    else
      render 'edit'
    end
  end
  def destroy
    @provider_bill = ProviderBill.find(params[:id])
    if @provider_bill.delete
      redirect_to provider_bills_path
    end
  end

  private
  def permit_params
    params.require(:provider_bill).permit(:bill_number, :description, :amount, :status, :provider_id, :transaction_id)
  end
end
