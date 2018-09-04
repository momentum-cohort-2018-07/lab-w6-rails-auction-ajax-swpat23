class Bid < ApplicationRecord
  belongs_to :item

  validates :item, presence: true
  validates :amount, presence: true, numericality: {greater_than: 0}

  validate :bid_must_exceed_prior_bids, on: :create
  validate :bid_must_exceed_starting_bid, on: :create

  def bid_must_exceed_prior_bids
    if amount && amount <= highest_bid_amount
      errors.add(:amount, "must exceed all prior bids.")
    end
  end

  def bid_must_exceed_starting_bid
    if amount && item && amount < item.starting_bid
      errors.add(:amount, "must exceed starting bid.")
    end
  end

  def highest_bid_amount
    return 0 unless item
    item.highest_bid_amount
  end

end
