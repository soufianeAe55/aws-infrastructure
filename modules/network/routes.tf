resource "aws_route" "public_internet" {
  route_table_id         = aws_vpc.vpc.main_route_table_id  # existing route table ID
  destination_cidr_block = "0.0.0.0/0"               # destination for internet traffic
  gateway_id             = aws_internet_gateway.gw.id  # IGW to route through
}