variable environment {
  type = string
  default = "prod"
}
variable product_name {
  type = string 
  default = "infra"
}
variable ntp_ip {
  type = list(string)
}
variable dns_ip {
  type = list(string)
}
variable proxy_ip {
   type = list(string)
}
variable syslog_ip {
  type = list(string)
}
variable smtp_ip {
  type = list(string)
}
variable ldap_ip {
  type = list(string)
} 
  

