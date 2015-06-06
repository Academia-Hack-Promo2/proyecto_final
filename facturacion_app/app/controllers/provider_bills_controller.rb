class ProviderBillsController < ApplicationController
	def index
    @p_bills = ProviderBills.all
  end
  def new
    @p_bill = ProviderBills.new
  end
  def create
    @p_bill = ProviderBillsl.new(permit_params)
    if @p_bill.save
      redirect_to Bills_path
    else
      reditect 'new'
    end
  end
  def edit
    @p_bill = ProviderBills.find(params[:id])
  end
  def update
    @p_bill = ProviderBills.find(params[:id])
    if @p_bill.update(permit_params)
      redirect_to provider_bills_path
    else
      redirect 'new'
    end
  end
  def destroy
    @p_bill = ProviderBills.find(params[:id])
    if @p_bill.delete
      redirect_to provider_bills_path
    end
  end
  private
    def permit_params
      params.require(:providerbill).permit(:bill_number, :amount, :payment_number, :provider)
    end
end
