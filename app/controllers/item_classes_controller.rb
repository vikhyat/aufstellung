class ItemClassesController < ApplicationController
  # GET /item_classes
  # GET /item_classes.json
  def index
    @item_classes = ItemClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @item_classes }
    end
  end

  # GET /item_classes/1
  # GET /item_classes/1.json
  def show
    @item_class = ItemClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item_class }
    end
  end

  # GET /item_classes/new
  # GET /item_classes/new.json
  def new
    @item_class = ItemClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item_class }
    end
  end

  # GET /item_classes/1/edit
  def edit
    @item_class = ItemClass.find(params[:id])
  end

  # POST /item_classes
  # POST /item_classes.json
  def create
    @item_class = ItemClass.new(params[:item_class])

    respond_to do |format|
      if @item_class.save
        format.html { redirect_to @item_class, notice: 'Item class was successfully created.' }
        format.json { render json: @item_class, status: :created, location: @item_class }
      else
        format.html { render action: "new" }
        format.json { render json: @item_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /item_classes/1
  # PUT /item_classes/1.json
  def update
    @item_class = ItemClass.find(params[:id])

    respond_to do |format|
      if @item_class.update_attributes(params[:item_class])
        format.html { redirect_to @item_class, notice: 'Item class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_classes/1
  # DELETE /item_classes/1.json
  def destroy
    @item_class = ItemClass.find(params[:id])
    @item_class.destroy

    respond_to do |format|
      format.html { redirect_to item_classes_url }
      format.json { head :no_content }
    end
  end
end
