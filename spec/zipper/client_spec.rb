require 'spec_helper'

describe Zipper::Client do
  subject { described_class.new }

  describe '#get_zip_data' do
    let(:zip) { 90_266 }

    it 'calls get on the Zip class' do
      expect(::Zipper::Zip).to receive(:get).with(
        an_instance_of(::Zipper::Connection),
        zip
      )
      subject.get_zip_data(zip)
    end
  end
end
