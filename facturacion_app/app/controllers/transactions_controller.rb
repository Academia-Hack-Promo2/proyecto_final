class TransactionsController < ApplicationController
	def index
    @transactions = nil
    if params[:provider_bill_id].nil?
      @transactions = Transaction.where("bill_id" => params[:bill_id])
    else
      if params[:bill_id].nil?
        @transactions = Transaction.where("provider_bill_id" => params[:provider_bill_id])
      end
    end
  end
  def new
    if params[:provider_id] != nil
      @transaction = Transaction.new
      @transaction.provider_bill_id = params[:provider_id]
      @provider_bill = ProviderBill.find(params[:provider_id])
      @transaction.bill_number = @provider_bill.bill_number
    else
      @transaction = Transaction.new
      @transaction.bill_id = params[:bill_id]
      @bill = Bill.find(params[:bill_id])
      @transaction.bill_number = @bill.bill_number
    end

  end
  def create
    @transaction = Transaction.new(permit_params)
    if @transaction.save
      if @transaction.provider_bill_id != nil
        @provider_bill = ProviderBill.find(@transaction.provider_bill_id)
        @provider_bill.update(:status => "cancelada") 
        redirect_to provider_bills_path
      else
        @bill = Bill.find(@transaction.bill_id)
        @bill.update(:status => "cancelada") 
        redirect_to bills_path
      end
    else
      render 'new'
    end
  end
  def edit
    @transaction = Transaction.find(params[:id])
  end
  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.update(permit_params)
      redirect_to transaction_path
    else
      render 'edit'
    end
  end
  def destroy
    @transaction = Transaction.find(params[:id])
    if @transaction.delete
      redirect_to transaction_path
    end
  end
  private
  def permit_params
    params.require(:transaction).permit(:transaction_number, :transaction_total, :transaction_date, :bill_number, :bill_id, :provider_bill_id)
  end
end
