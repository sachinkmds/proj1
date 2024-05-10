resource "aws_route_table" "myrt" {
    vpc_id = aws_vpc.myvpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.myigw.id
        }
        tags = {
          Name="rt1"
        }
    }
    resource "aws_route_table_association" "myrta" {
        route_table_id = aws_route_table.myrt.id
        subnet_id = aws_subnet.mysub.id
    }