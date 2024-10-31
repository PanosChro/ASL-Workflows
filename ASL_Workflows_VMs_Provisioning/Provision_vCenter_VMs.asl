{
  "Comment": "Provision VMs based on user inputs",
  "StartAt": "Determine CPU Size",
  "States": {
    "Determine CPU Size": {
      "Comment": "Determine CPU dialog value",
      "Type": "Pass",
      "InputPath": "$.CPU_Size",
      "ResultPath": "$.number_of_sockets",
      "Next": "Determine Memory Size"
    },
    "Determine Memory Size": {
      "Comment": "Determine Memory dialog value",
      "Type": "Pass",
      "InputPath": "$.Memory_Size",
      "ResultPath": "$.vm_memory",
      "Next": "Provision"
    },
    "Provision": {
      "Type": "Task",
      "Resource": "manageiq://provision_execute",
      "Next": "Finished"
    },
    "Finished": {
      "Type": "Succeed"
    }
  }
}
