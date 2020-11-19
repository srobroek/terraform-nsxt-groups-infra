variable environment {
  type = string
  default = "prod"
}
variable product_name {
  type = string 
  default = "infra"

      ntp_ip = list(string)
      dns_ip = list(string)
      proxy_ip = list(string)
      syslog_ip = list(string)
      smtp_ip = list(string)
      ldap_ip = list(string)
    })

}