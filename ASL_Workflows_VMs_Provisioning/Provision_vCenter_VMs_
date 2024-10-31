{
  "Comment": "Provision VMs based on user inputs",
  "StartAt": "DetermineSize",
  "States": {
    "Determine CPU Size": {
      "Comment": "Determine CPU dialog value",
      "Type": "Choice",
      "Choices": [
        {
          "Variable": "$.CPU_Size",
          "IntegerEquals": "2",
          "Type": "Pass",
	  "ResultPath": "$.number_of_sockets",
          "Result":     "2",
          "Next": "Determine Memory Size"
        },
        {
          "Variable": "$.CPU_Size",
          "IntegerEquals": "4",
          "Type": "Pass",
          "ResultPath": "$.number_of_sockets",
          "Result":     "4",
          "Next": "Determine Memory Size"
        },
        {
          "Variable": "$.CPU_Size",
          "IntegerEquals": "8",
          "Type": "Pass",
          "ResultPath": "$.number_of_sockets",
          "Result":     "8",
          "Next": "Determine Memory Size"
        },
	{
          "Variable": "$.CPU_Size",
          "IntegerEquals": "16",
          "Type": "Pass",
          "ResultPath": "$.number_of_sockets",
          "Result":     "16",
          "Next": "Determine Memory Size"
        },
	{
          "Variable": "$.CPU_Size",
          "IntegerEquals": "32",
          "Type": "Pass",
          "ResultPath": "$.number_of_sockets",
          "Result":     "32",
          "Next": "Determine Memory Size"
        },
	{
          "Variable": "$.CPU_Size",
          "IntegerEquals": "64",
          "Type": "Pass",
          "ResultPath": "$.number_of_sockets",
          "Result":     "64",
          "Next": "Determine Memory Size"
        },
      ],
         },
   "Determine Memory Size": {
      "Comment": "Determine Memory dialog value",
      "Type": "Choice",
      "Choices": [
        {
          "Variable": "$.Memory_Size",
          "IntegerEquals": "4",
          "Type": "Pass",
          "ResultPath": "$.vm_memory",
          "Result":     "4096",
          "Next": "Provision"
        },
        {
          "Variable": "$.Memory_Size",
          "IntegerEquals": "8",
          "Type": "Pass",
          "ResultPath": "$.vm_memory",
          "Result":     "8192",
          "Next": "Provision"
        },
        {
          "Variable": "$.Memory_Size",
          "IntegerEquals": "16",
          "Type": "Pass",
          "ResultPath": "$.vm_memory",
          "Result":     "16384",
          "Next": "Provision"
        },
	{
          "Variable": "$.Memory_Size",
          "IntegerEquals": "32",
          "Type": "Pass",
          "ResultPath": "$.vm_memory",
          "Result":     "32768",
          "Next": "Provision"
        },
	{
          "Variable": "$.Memory_Size",
          "IntegerEquals": "64",
          "Type": "Pass",
          "ResultPath": "$.vm_memory",
          "Result":     "65536",
          "Next": "Provision"
        },
	{
          "Variable": "$.Memory_Size",
          "IntegerEquals": "128",
          "Type": "Pass",
          "ResultPath": "$.vm_memory",
          "Result":     "131072",
          "Next": "Provision"
        },
      ],
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
