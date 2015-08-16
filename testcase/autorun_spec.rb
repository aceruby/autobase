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

describe "GPUB" do
  context "BASE" do
    include_examples "NIC_BASE", Env_GpubBase
  end
  context "EFABRIC" do
    include_examples "NIC_BASE", Env_GpubEFabric
  end
  context "INTF100G" do
    include_examples "NIC_BASE", Env_GpubIntf100G
  end
end

describe "GSUA" do
  context "BASE" do
    include_examples "NIC_BASE", Env_GsuaBase
  end
  context "EFABRIC" do
    include_examples "NIC_BASE", Env_GpuaEFabric
  end
end

describe "TXSUA" do
  context "INTF1G" do
    include_examples "NIC_BASE", Env_TxsuaIntf1G
  end
  context "INTF10G" do
    include_examples "NIC_BASE", Env_TxsuaIntf10G
  end
end