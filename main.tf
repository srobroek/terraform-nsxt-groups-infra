## application groups

resource "nsxt_policy_group" "dns" {
  display_name = "app.dns.${var.product}.${var.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.dns_ip
    }
  }
   count = length(var.dns_ip) != 0 ? 1 : 0  
}

resource "nsxt_policy_group" "ntp" {
  display_name = "app.ntp.${var.product}.${var.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.ntp_ip
    }
  }
   count = length(var.ntp_ip) != 0 ? 1 : 0  
}


resource "nsxt_policy_group" "proxy" {
  display_name = "app.proxy.${var.product}.${var.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.proxy_ip
    }
  }
   count = length(var.proxy_ip) != 0 ? 1 : 0
}


resource "nsxt_policy_group" "syslog" {
  display_name = "app.syslog.${var.product}.${var.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.syslog_ip
    }
  }
  count = length(var.syslog_ip) != 0 ? 1 : 0
}


resource "nsxt_policy_group" "smtp" {
  display_name = "app.ntp.${var.product}.${var.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.smtp_ip
    }
  }
   count = length(var.smtp_ip) != 0 ? 1 : 0
}

resource "nsxt_policy_group" "ldap" {
  display_name = "app.ldap.${var.product}.${var.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.smtp_ip
    }
  }
   count = length(var.ldap_ip) != 0 ? 1 : 0
}

