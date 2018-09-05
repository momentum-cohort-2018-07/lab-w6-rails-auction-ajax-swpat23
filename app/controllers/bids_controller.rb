class BidsController < ApplicationController

  def new
    @bid = Bid.all
  end

  def index
    @bids = Bid.all
  end

  def create
    @bid = Bid.new(bid_params)
    if @bid.save
       respond_to :js
       redirect_to @bid.item, notice: 'Your bid has been recorded!'
    else
      redirect_to bids_path, notice: 'Something went wrong.'
    end
    end


    def update
      respond_to do |format|
        if @bid.update(bid_params)
          format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
          format.json { render :show, status: :ok, location: @bid }
        else
          format.html { render :edit }
          format.json { render json: @bid.errors, status: :unprocessable_entity }
        end
      end
    end


    private
      def bid_params
        params.require(:bid).permit(:amount, :item_id)
      end
end

