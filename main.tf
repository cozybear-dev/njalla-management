#A records
resource "njalla_record_a" "tor_nodes" {
  for_each = {
    node1  = "176.65.149.100"
    node2  = "176.65.149.88"
    node3  = "176.65.149.84"
    node4  = "176.65.149.87"
    node5  = "194.87.31.104"
    node6  = "77.73.69.128"
    node7  = "77.73.70.167"
    node8  = "176.65.151.192"
    node9  = "176.65.151.192"
    node10 = "176.65.151.192"
    node11 = "176.65.151.192"
    node12 = "176.65.151.192"
    node13 = "176.65.151.192"
    node14 = "176.65.151.192"
    node15 = "176.65.151.192"
    node16 = "176.65.151.193"
    node17 = "176.65.151.193"
    node18 = "176.65.151.193"
    node19 = "176.65.151.193"
    node20 = "176.65.151.193"
    node21 = "176.65.151.193"
    node22 = "176.65.151.193"
    node23 = "176.65.151.193"
    node24 = "176.65.151.194"
    node25 = "176.65.151.194"
    node26 = "176.65.151.194"
    node27 = "176.65.151.194"
    node28 = "176.65.151.194"
    node29 = "176.65.151.194"
    node30 = "176.65.151.194"
    node31 = "176.65.151.194"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 10800 #3h
  content = each.value
}

# resource "njalla_record_a" "short_ttl_tor_nodes" {
#   for_each = {
#     pffuck1 = "154.213.185.133"
#     pffuck2 = "154.213.185.165"
#     pffuck3 = "154.213.185.185"
#     pffuck4 = "154.213.185.183"
#   }
#   domain  = "shadowbrokers.eu"
#   name    = "tor.${each.key}"
#   ttl     = 300 #5m
#   content = each.value
# }

#AAAA records
resource "njalla_record_aaaa" "tor_nodes" {
  for_each = {
    node1 = "2a05:b0c7:67c6::1"
    node2 = "2a05:b0c7:6949::1"
    node3 = "2a05:b0c7:6bd4::1"
    node4 = "2a05:b0c7:6388::1"
    # node5 = ""
    node6 = "2a00:1838:37:52::da4e"
    node7 = "2a00:1838:37:468::98b4"
  }
  domain  = "shadowbrokers.eu"
  name    = "tor.${each.key}"
  ttl     = 10800 #3h
  content = each.value
}

#TXT records
resource "njalla_record_txt" "tor_nodes" {
  for_each = {
    node1  = "A4A98B4E4EBBAADE5C8226D041555E82B59342F3"
    node2  = "D04FE78152A06AEAF950A2E58A11E9739B291C0A"
    node3  = "31DEA0877BE529EF6716ECD22527A63B156C34E8"
    node4  = "7CF3BFD0DE5AD3772CB9D293BF9251813296924C"
    node5  = "AA5C46F66CB5863FA379F18081F9BEDC130AD601"
    node6  = "AC7BDB39F81C4B364EA50B12B51C77C7A131EA7C"
    node7  = "A3BC09219C2351376412D8736C7CAEE4A1639E3B"
    node8  = "8F5FCD8DBB6264758148F8F225791FE0B17ADDFC"
    node9  = "AEBEFC1E12836E205A2D94723B6062F97034D552"
    node10 = "DBAB9A43E1DDB3E0AE0A25FFCE6829F6BE6E6B69"
    node11 = "F2EF6B3ECFACAFC52AC5B9119DABA96279E94C48"
    node12 = "BEFF900F8BA4D4BE7DB0B7E398E0CE4DFCFC7DBB"
    node13 = "4E6469EC254E8559826C251F63418F400D0280CD"
    node14 = "41C33208AE7144969C73B6B430728DA8829C3CA6"
    node15 = "038DF3BE1145CE16EB300579565954B1F75A1542"
    node16 = "0A663EBE8DA60AAF89996DC8ABA53E86F2D1891E"
    node17 = "8BAF40B391D3FBD2E9B0D86D9CC7EC70EE0709C8"
    node18 = "CA618AB42BE732950D3B34E415DEE4CBCBD9D428"
    node19 = "51A99AE32F8168B1EA212EAD35F29AB8AE8F516B"
    node20 = "E6F96F25D53F4D89E1D2FC14081BAD884A4E743B"
    node21 = "F1E6BFB3B8A0A7345FAACAC8A91D114EF2DF37EB"
    node22 = "C77976157FACEDEB5A8A40D9101B1FEC3DFCBF03"
    node23 = "8C3F501E4A043E1AA89724950A1B9120F73BC38A"
    node24 = "4886AF89373E07B596C2E14BDDE4A84139867CCA"
    node25 = "A59BA1B154987566677081CBA11A9D1EF26EE7F4"
    node26 = "118256C3B51C96DEF48C22FFA95AAA7C97CBDB1A"
    node27 = "2D8CEE1E6B46712DBC4960176B100B3A315D8028"
    node28 = "351141648F753D287F1A8B3D86E97B225A94F9DE"
    node29 = "A7BB8C16750EFA31C84E0F58AC803678550884C8"
    node30 = "78AAA736352020B5E1D833F6A44DBFC5B6CBAA6A"
    node31 = "B0D258BF1991C53079CDCB8177E18CBF84B47174"
  }
  domain  = "shadowbrokers.eu"
  name    = lower("${each.value}")
  ttl     = 10800 #3h
  content = "we-run-this-tor-relay"
}

# resource "njalla_record_txt" "redirects" {
#   for_each = {
#     hk = "shadowbrokers.hk"
#   }
#   domain  = "shadowbrokers.eu"
#   name    = lower("${each.value}")
#   ttl     = 10800 #3h
#   content = "we-run-this-domain"
# }
