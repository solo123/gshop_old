class StockJournalsController < ApplicationController
  # GET /stock_journals
  # GET /stock_journals.json
  def index
    @stock_journals = StockJournal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stock_journals }
    end
  end

  # GET /stock_journals/1
  # GET /stock_journals/1.json
  def show
    @stock_journal = StockJournal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stock_journal }
    end
  end

  # GET /stock_journals/new
  # GET /stock_journals/new.json
  def new
    @stock_journal = StockJournal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stock_journal }
    end
  end

  # GET /stock_journals/1/edit
  def edit
    @stock_journal = StockJournal.find(params[:id])
  end

  # POST /stock_journals
  # POST /stock_journals.json
  def create
    @stock_journal = StockJournal.new(params[:stock_journal])

    respond_to do |format|
      if @stock_journal.save
        format.html { redirect_to @stock_journal, notice: 'Stock journal was successfully created.' }
        format.json { render json: @stock_journal, status: :created, location: @stock_journal }
      else
        format.html { render action: "new" }
        format.json { render json: @stock_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stock_journals/1
  # PUT /stock_journals/1.json
  def update
    @stock_journal = StockJournal.find(params[:id])

    respond_to do |format|
      if @stock_journal.update_attributes(params[:stock_journal])
        format.html { redirect_to @stock_journal, notice: 'Stock journal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stock_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_journals/1
  # DELETE /stock_journals/1.json
  def destroy
    @stock_journal = StockJournal.find(params[:id])
    @stock_journal.destroy

    respond_to do |format|
      format.html { redirect_to stock_journals_url }
      format.json { head :no_content }
    end
  end
end
