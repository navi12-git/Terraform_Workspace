resource_group_name = {
  rg1 = {
    name     = "newrg"
    location = "westeurope"
  }
}
##no need create storage account right now
storage_account_name = {
  stg1 = {
    name                     = "strg0120"
    resource_group_name      = "newrg"
    location                 = "westeurope"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet_name = {
  vnet1 = {
    name                = "newvnet"
    resource_group_name = "newrg"
    location            = "westeurope"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_name = {

  subnet1 = {
    name                 = "frontend"
    virtual_network_name = "newvnet"
    resource_group_name  = "newrg"
    address_prefixes     = ["10.0.0.0/24"]
  }
  subnet2 = {
    name                 = "backend"
    virtual_network_name = "newvnet"
    resource_group_name  = "newrg"
    address_prefixes     = ["10.0.1.0/24"]
  }



}

vms = {
  vm1 = {
    subnet_name          = "frontend"
    virtual_network_name = "newvnet"
    resource_group_name  = "newrg"
    nic_name             = "newnic"
    location             = "westeurope"
    vm_name              = "mylinux20"
    size                 = "Standard_F2"

  }
  vm2 = {
    subnet_name          = "backend"
    virtual_network_name = "newvnet"
    resource_group_name  = "newrg"
    nic_name             = "newnic20"
    location             = "westeurope"
    vm_name              = "mylinux2020"
    size                 = "Standard_F2"

  }
}

bastions = {
  bastion1 = {
    virtual_network_name = "newvnet"
    resource_group_name  = "newrg"
    pip_name             = "newpip"
    bastion_name         = "mybastion"
    location             = "westeurope"

  }

}