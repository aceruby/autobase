class EnvType
  attr_accessor :blade, :intf, :vendor
  def initialize(blade, intf, vendor)
    @blade=blade
    @intf=intf
    @vendor=vendor
  end
end

class Env_GpuaBase < EnvType
  def initialize
    super("GPUA", "BASE", "Mellanox")
  end
end
class Env_GpuaEFabric < EnvType
  def initialize
    super("GPUA", "EFABRIC", "Intel")
  end
end
class Env_GpuaIntf10G < EnvType
  def initialize
    super("GPUA", "INTF10G", "Mellanox")
  end
end
class Env_GpuaIntf1G < EnvType
  def initialize
    super("GPUA", "INTF1G", "Intel")
  end
end

class Env_GpubBase < EnvType
  def initialize
    super("GPUB", "BASE", "Mellanox")
  end
end
class Env_GpubEFabric < EnvType
  def initialize
    super("GPUB", "EFABRIC", "Intel")
  end
end
class Env_GpubIntf100G < EnvType
  def initialize
    super("GPUB", "INTF100G", "Huawei")
  end
end

class Env_GsuaBase < EnvType
  def initialize
    super("GSUA", "BASE", "Mellanox")
  end
end
class Env_GsuaEFabric < EnvType
  def initialize
    super("GSUA", "EFABRIC", "Intel")
  end
end
class Env_TxsuaIntf10G < EnvType
  def initialize
    super("TXSUA", "INTF10G", "Mellanox")
  end
end
class Env_TxsuaIntf1G < EnvType
  def initialize
    super("TXSUA", "INTF1G", "Intel")
  end
end