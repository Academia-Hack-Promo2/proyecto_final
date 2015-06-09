class ProviderBillsController < ApplicationController
	def index
    @p_bills = nil
    if params[:status].nil?
      @p_bills = ProviderBill.all
    else
      @p_bills = ProviderBill.where("status" => params[:status])
    end
  end
  def new
    @p_bill = ProviderBill.new
    @p_bill.provider_id = params[:provider_id]
  end
  def create
    @p_bill = ProviderBilll.new(permit_params)
    if @p_bill.save
      redirect_to provider_bills_path
    else
      render 'new'
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
      render 'edit'
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
