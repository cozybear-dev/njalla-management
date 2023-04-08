#A records
resource "njalla_record_a" "tor_nodes" {
  for_each = {
    node1    = "23.137.249.8"
    node2    = "77.91.85.147"
    node3    = "23.184.48.127"
    node4    = "23.184.48.128"
    node5    = "23.137.249.143"
    node6    = "23.137.249.185"
    node7    = "79.137.202.92"
    node8    = "77.91.86.95"
    node9    = "185.17.0.40"
    node10   = "185.17.0.55"
    node11   = "89.185.85.140"
    node12   = "77.91.78.210"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 10800 #3h
  content = each.value
}

resource "njalla_record_a" "short_ttl_tor_nodes" {
  for_each = {
    # testnode = "79.137.202.107"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 300 #5m
  content = each.value
}

#AAAA records
resource "njalla_record_aaaa" "tor_nodes" {
  for_each = {
    node1 = "2602:fc24:11:aabe::1"
    node3 = "2602:fc24:18:1be9::1"
    node4 = "2602:fc24:18:1c54::1"
    node5 = "2602:fc24:11:4441::1"
    node6 = "2602:fc24:11:96f9::1"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 10800 #3h
  content = each.value
}