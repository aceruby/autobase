require 'rspec'
require 'require_all'
require '../config/config.rb'
require '../nic_base/nic_base.rb'

describe "GPUA" do
  context "BASE" do
    include_examples "NIC_BASE", Env_GpuaBase
  end
  context "EFABRIC" do
    include_examples "NIC_BASE", Env_GpuaEFabric
  end
  context "INTF1G" do
    include_examples "NIC_BASE", Env_GpuaIntf1G
  end
  context "INTF10G" do
    include_examples "NIC_BASE", Env_GpuaIntf10G
  end
end