variable "ami" {
  default = {
    ami1 : "ami-0022c770"
    "ami2" = "ami-0022f774911c1d690"
  }
  type    = map
}

variable "instance_type" {
  type = tuple([bool, map(string)])
  default = [true, {
    type1 = "m1.small"
    "type2"   = "t2.micro",
    type3 : "m1.medium"
  }]
}



variable "boolType" {
 type        = bool
 default     =  false
 description = "bool type"
}

variable "numberType" {
 type        = number
 default     =  0
 description = "number type"
}


variable "anyvar" {
	type = any
	default = [
	"a",
	"b", "a"]
}

variable "imageset" {
	type = set(string)
	default = [
	"image 1",
	"image 2", "image 3"]
}

variable "listType" {
 type        = list
  default     = ["t2.micro", #comment
 					"m1.small" // comment ..,
           ]
 description = "Instance types for the EC2 instance"
 /*
	multiline 
	* comment
 */
}

variable "subnetTuple" {
 type = tuple([bool, bool, object({
   name = string
   env  = string,
   isAvailable = bool
 })
 ])
 /***
 comment
 commment
 */
 default = [false, true,{
   name : "vpc-0163eb001426736ac"
   //commment .......,
   env  : "Dev",
   isAvailable : true
 }]
 description = "Subnet ID for network interface"
}

variable "mapvar" {
    default =                         {
	  "name" : "cpgnic"
	  duration = 958,
	  count = 45
  }
  type = map  (string)
  description = "mapppp type"
}

 
 
variable "objectVar" {
 default = {
   name = "My Vm Instance"
   //commment .......,
   env  = "Dev",
   isAvailable = true
 }
 type = object({
   name = string
   env  = string,
   isAvailable = bool
 })
 description = "Tags for the EC2 instance"
}
