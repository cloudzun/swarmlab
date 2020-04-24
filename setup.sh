az group create --name swarmlab --location southeastasia
az vm create --resource-group swarmlab --name master --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data master.txt
az vm create --resource-group swarmlab --name swarmVM01 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data node.txt
az vm create --resource-group swarmlab --name swarmVM02 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data node.txt
az vm create --resource-group swarmlab --name swarmVM03 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data node.txt

az vm open-port --resource-group swarmlab --name master --port 0-65535 --priority 1001
az vm open-port --resource-group swarmlab --name swarmVM01 --port 0-65535 --priority 1001
az vm open-port --resource-group swarmlab --name swarmVM02 --port 0-65535 --priority 1001
az vm open-port --resource-group swarmlab --name swarmVM03 --port 0-65535 --priority 1001
