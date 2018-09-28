module Flippa
  class Listing
    include Virtus.model(strict: true)

    attribute :type
    attribute :id
    attribute :app_downloads_per_month
    attribute :bid_count
    attribute :buy_it_now_price
    attribute :confidential
    attribute :current_price
    attribute :ends_at
    attribute :established_at
    attribute :external_url
    attribute :has_verified_revenue
    attribute :has_verified_traffic
    attribute :html_url
    attribute :hostname
    attribute :page_views_per_month
    attribute :post_auction_negotiable
    attribute :profit_per_month
    attribute :property_name
    attribute :property_type
    attribute :reserve_met
    attribute :revenue_per_month
    attribute :revenue_sources
    attribute :sale_method
    attribute :starts_at
    attribute :status
    attribute :summary
    attribute :thumbnail_url
    attribute :title
    attribute :uniques_per_month
    attribute :watching
    # TODO
    # attribute :relationships
  end
end
