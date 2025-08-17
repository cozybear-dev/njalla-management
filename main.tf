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
    node1 = "A4A98B4E4EBBAADE5C8226D041555E82B59342F3"
    node2 = "D04FE78152A06AEAF950A2E58A11E9739B291C0A"
    node3 = "31DEA0877BE529EF6716ECD22527A63B156C34E8"
    node4 = "7CF3BFD0DE5AD3772CB9D293BF9251813296924C"
    node5 = "AA5C46F66CB5863FA379F18081F9BEDC130AD601"
    node6 = "AC7BDB39F81C4B364EA50B12B51C77C7A131EA7C"
    node7 = "A3BC09219C2351376412D8736C7CAEE4A1639E3B"
    node8 = "A34EBDC33940A61B72B278B61006B018FA749470"
    # node9  = "AD9ADD5135343F013423F7528AE3F753B41E51EA"
    # node10 = "6B56DCB302DA4BC5F468A7D81FDD606A3DF259D6"
    # node11 = "B78D6028A8B4E964D0D5846C719E318FCF78298B"
    # node12 = "A6A650449C729D57C24C99C8ACA2090243F3172C"
    # node13 = "098DFDB1F0F191DDD5957F67B220EFA6FC2FC1BF"
    # node14 = "B06C636CC268AC2BCBEEF4261C72A5111A88E422"
    # node15 = "7D524A203780608CC486D83EE944A89909FEC1F8"
    # node16 = "EDAE2F5BBB9937D3398AF849EFDD35805FA44905"
    # node17 = "DF521A2AC8BBA6B303EAE1784BCA17D2C0EDA8F2"
    # node18 = "17E21333C2BA4403F5E7CC0CDA28D2C89D339CAF"
    # node19 = "1836BDFA47F04DA820AD36409D4D7A8713DEE93E"
    # node20 = "C7EC5E64B545E403C0322A26C18CDBBC30EE3E37"
    # node21 = "989C21F9D7B9FE3C3CE293C2DDA41C72F555D407"
    # node22 = "D649FDA547419792469EBF9F7D6DF0A1E4E50ECC"
    # node23 = "C02E3262F8D674F494EAA97A0E86DE712C6F5A12"
    # node24 = "10D363AE74C4F30370F8ADE43241C8F17EC47CB5"
    # node25 = "5F152ED0F1EA7E631478FD218B115AD27FE90564"
    # node26 = "B95E6ABE7AD60D60CDA8F84E6B40C909DC6FBF45"
    # node27 = "4FE643714615BC290B2F7E568B5652D8C8825CF9"
    # node28 = "65C5F265EAFA1FEAF67412D6B1BEBC594C14F626"
    # node29 = "2FA5981F1ED22682815E9D42ECDA0317C531E137"
    # node30 = "9C2497CD8DAF7A705CFEF292C7CEFDCD58414234"
    # node31 = "B4C48316FE4D72099D2FEDC236219AE3DD51E554"
    # node32 = "3DBEBEBF5CB8D3C52B5BB0A8E265EFE7F1532898"
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
