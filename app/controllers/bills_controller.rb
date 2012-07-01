class BillsController < ApplicationController
  def index
    @bills = Bill.all
  end
  
  def new
    @bill = Bill.new
  end
  
  def create
    @bill = Bill.new
    @bill.customer_name = params[:customer_name]
    if @bill.save
      redirect_to @bill
    else
      render action: 'new'
    end
  end
  
  def remove_item
    item = Item.find(params[:item_id])
    item.bill_id = nil
    item.save
    redirect_to Bill.find(params[:bill_id])
  end
  
  def add_item
    item = Item.find(params[:item_id])
    item.bill_id = params[:bill_id]
    item.save
    redirect_to Bill.find(params[:bill_id])
  end
  
  def show
    @bill = Bill.find(params[:id])
    @items = Item.all.select {|x| x.bill_id.nil? }
  end
  
  def edit
    @bill = Bill.find(params[:id])
  end
  
  def update
    @bill = Bill.find(params[:id])

    if @bill.update_attributes(params[:bill])
      redirect_to @bill
    else
      render action: 'edit'
    end
  end
end
