module "eastus-vnet" {
        source = "../vnet"
        location = "eastus"
        vnetname = "myvnet"
        resourcegroupname = "myresourcegroup"

}