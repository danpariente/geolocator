require "rails_helper"

RSpec.describe GeocodeJob do
  include ActiveJob::TestHelper

  describe ".perform_later" do
    it "enqueues the job" do
      location_params = attributes_for(:location)

      expect do
        GeocodeJob.perform_later(location_params)
      end.to change(ActiveJob::Base.queue_adapter.enqueued_jobs, :size).by(1)
    end
  end

  it "uses the specified queue" do
    queue_name = GeocodeJob.new.queue_name

    expect(queue_name).to eq("geocode")
  end

  after do
    clear_enqueued_jobs
    clear_performed_jobs
  end
end
