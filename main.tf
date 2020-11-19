## application groups

resource "nsxt_policy_group" "dns" {
  display_name = "app.dns.${var.product.product_name}.${var.product.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.product.dns_ip
    }
  }
   count = length(var.product.dns_ip) != 0 ? 1 : 0  
}

resource "nsxt_policy_group" "ntp" {
  display_name = "app.ntp.${var.product.product_name}.${var.product.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.product.ntp_ip
    }
  }
   count = length(var.product.ntp_ip) != 0 ? 1 : 0  
}


resource "nsxt_policy_group" "proxy" {
  display_name = "app.proxy.${var.product.product_name}.${var.product.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.product.proxy_ip
    }
  }
   count = length(var.product.proxy_ip) != 0 ? 1 : 0
}


resource "nsxt_policy_group" "syslog" {
  display_name = "app.syslog.${var.product.product_name}.${var.product.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.product.syslog_ip
    }
  }
  count = length(var.product.syslog_ip) != 0 ? 1 : 0
}


resource "nsxt_policy_group" "smtp" {
  display_name = "app.ntp.${var.product.product_name}.${var.product.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.product.smtp_ip
    }
  }
   count = length(var.product.smtp_ip) != 0 ? 1 : 0
}

resource "nsxt_policy_group" "ldap" {
  display_name = "app.ldap.${var.product.product_name}.${var.product.environment}"
  criteria {
    ipaddress_expression {
      ip_addresses = var.product.smtp_ip
    }
  }
   count = length(var.product.ldap_ip) != 0 ? 1 : 0
}

