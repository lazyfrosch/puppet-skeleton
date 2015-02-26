require 'spec_helper'

describe 'skeleton' do

  context 'on Debian based systems' do
    let :facts do
      {
          :osfamily => 'Debian',
      }
    end
    let :params do
      {
        :param => true,
      }
    end

    it { should contain_class('skeleton') }
    it { should contain_class('skeleton::private') }
  end

  context 'unsupported operatingsystem' do
    let :facts do
      {
        :osfamily => 'RedHat',
      }
    end
    let :params do
      {
          :param => true,
      }
    end

    it 'should fail' do
      expect {
        should contain_class('skeleton ')
      }.to raise_error(Puppet::Error, /not supported yet/)
    end

  end

end
