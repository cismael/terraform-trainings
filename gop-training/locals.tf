locals {
  sn_reserved_name = ["sn-reserved-A", "sn-reserved-B", "sn-reserved-C"]
  sn_reserved_cidr = ["10.16.0.0/20", "10.16.64.0/20", "10.16.128.0/20"]
  sn_reserved_ipv6 = ["00", "04", "08"]

  sn_db_name = ["sn-db-A", "sn-db-B", "sn-db-C"]
  sn_db_cidr = ["10.16.16.0/20", "10.16.80.0/20", "10.16.144.0/20"]
  sn_db_ipv6 = ["01", "05", "09"]

  sn_app_name = ["sn-app-A", "sn-app-B", "sn-app-C"]
  sn_app_cidr = ["10.16.32.0/20", "10.16.96.0/20", "10.16.160.0/20"]
  sn_app_ipv6 = ["02", "06", "10"]

  sn_web_name = ["sn-web-A", "sn-web-B", "sn-web-C"]
  sn_web_cidr = ["10.16.48.0/20", "10.16.112.0/20", "10.16.176.0/20"]
  sn_web_ipv6 = ["03", "07", "11"]
}
