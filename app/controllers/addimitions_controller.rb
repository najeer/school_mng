class AddimitionsController < ApplicationController
  # GET /addimitions
  # GET /addimitions.json
  def index
    # @addimitions = Addimition.all

  #@addimitions = Addimition.all.page(params[:page])
  @addimitions = Addimition.search(params[:search]).order("student_name").page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addimitions }
    end
  end

  # GET /addimitions/1
  # GET /addimitions/1.json
  def show
    @addimition = Addimition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @addimition }
    end
  end

  # GET /addimitions/new
  # GET /addimitions/new.json
  def new
    @addimition = Addimition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @addimition }
    end
  end

  # GET /addimitions/1/edit
  def edit
    @addimition = Addimition.find(params[:id])
  end

  # POST /addimitions
  # POST /addimitions.json
  def create
    @addimition = Addimition.new(params[:addimition])

    respond_to do |format|
      if @addimition.save
        format.html { redirect_to @addimition, notice: 'Addimition was successfully created.' }
        format.json { render json: @addimition, status: :created, location: @addimition }
      else
        format.html { render action: "new" }
        format.json { render json: @addimition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addimitions/1
  # PUT /addimitions/1.json
  def update
    @addimition = Addimition.find(params[:id])

    respond_to do |format|
      if @addimition.update_attributes(params[:addimition])
        format.html { redirect_to @addimition, notice: 'Addimition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @addimition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addimitions/1
  # DELETE /addimitions/1.json
  def destroy
    @addimition = Addimition.find(params[:id])
    @addimition.destroy

    respond_to do |format|
      format.html { redirect_to addimitions_url }
      format.json { head :no_content }
    end
  end
end
