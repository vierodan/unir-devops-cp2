#!/bin/bash

# Define the resource group names to delete
resource_groups_to_delete=("NetworkWatcherRG")

# Loop through each resource group name and delete it if it exists
for rg in "${resource_groups_to_delete[@]}"; do
  # Check if the resource group exists
  if az group show --name $rg &> /dev/null; then
    echo "Deleting resource group: $rg"
    az group delete --name $rg --yes --no-wait
  else
    echo "Resource group $rg does not exist."
  fi
done

echo "Specified resource groups have been scheduled for deletion."
