class BillsController < ApplicationController
  def index
    @bills = nil
    if params[:status].nil?
      @bills = Bill.all
    else
      @bills = Bill.where("status" => params[:status])
    end
  end
  def new
    @bill = Bill.new
  end
  def create
    @bill = Bill.new(permit_params)
    if @bill.save
      redirect_to Bills_path
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
      params.require(:bill).permit(:bill_number, :bill_control, :payment, :client_rif, :client_name, :client_phone, :client_email, :quantity, :unit_price, :tax, :bill_total)
    end
end
