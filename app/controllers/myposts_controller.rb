class MypostsController < ApplicationController
  # GET /myposts
  # GET /myposts.xml
  def index
    @myposts = Mypost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @myposts }
    end
  end

  # GET /myposts/1
  # GET /myposts/1.xml
  def show
    @mypost = Mypost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mypost }
    end
  end

  # GET /myposts/new
  # GET /myposts/new.xml
  def new
    @mypost = Mypost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mypost }
    end
  end

  # GET /myposts/1/edit
  def edit
    @mypost = Mypost.find(params[:id])
  end

  # POST /myposts
  # POST /myposts.xml
  def create
    @mypost = Mypost.new(params[:mypost])

    respond_to do |format|
      if @mypost.save
        format.html { redirect_to(@mypost, :notice => 'Mypost was successfully created.') }
        format.xml  { render :xml => @mypost, :status => :created, :location => @mypost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mypost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /myposts/1
  # PUT /myposts/1.xml
  def update
    @mypost = Mypost.find(params[:id])

    respond_to do |format|
      if @mypost.update_attributes(params[:mypost])
        format.html { redirect_to(@mypost, :notice => 'Mypost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mypost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /myposts/1
  # DELETE /myposts/1.xml
  def destroy
    @mypost = Mypost.find(params[:id])
    @mypost.destroy

    respond_to do |format|
      format.html { redirect_to(myposts_url) }
      format.xml  { head :ok }
    end
  end
end
