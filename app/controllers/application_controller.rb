class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :brands
  before_filter :workers

  protected

    def brands
      @brands = Refinery::Brands::Brand.all
    end

    def workers
      @workers = Refinery::Workers::Worker.all
      @worker = @workers.sample
    end
end
