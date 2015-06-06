class ProviderBillsController < ApplicationController
	def index
    @p_bills = ProviderBill.all
  end
  def new
    @p_bill = ProviderBill.new
  end
  def create
    @p_bill = ProviderBilll.new(permit_params)
    if @p_bill.save
      redirect_to provider_bills_path
    else
      reditect 'new'
    end
  end
  def edit
    @p_bill = ProviderBill.find(params[:id])
  end
  def update
    @p_bill = ProviderBill.find(params[:id])
    if @p_bill.update(permit_params)
      redirect_to provider_bills_path
    else
      redirect 'new'
    end
  end
  def destroy
    @p_bill = ProviderBill.find(params[:id])
    if @p_bill.delete
      redirect_to provider_bills_path
    end
  end
  private
    def permit_params
    end
end
