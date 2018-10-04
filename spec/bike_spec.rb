require 'bike'

describe Bike do
  it { is_expected.to respond_to :working?}

  it {is_expected.to respond_to :report_broken}

  it 'sends report when broken' do
    bike = Bike.new
    bike.report_broken
    expect(bike.working?).to eq (false)
  end
end
