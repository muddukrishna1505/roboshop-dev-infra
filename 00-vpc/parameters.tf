resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project}/${var.environment}/vpc_id" #/roboshop/dev/vpc.id
    type = "String"
    value = module.vpc.vpc_id
    overwrite = true
  
}

resource "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project}/${var.environment}/public_subnet_ids" #/roboshop/dev/vpc.id
    type = "String"
    value = join(",", module.vpc.public_subnet_ids) #pub_subnet_ids are list ssm parameter is not accepting that way,so we are using join function with comma separated
                                                    #ex: pub_subnet_1a, pub_subnet_1b
    overwrite = true
  
}

resource "aws_ssm_parameter" "private_subnet_ids" {
    name = "/${var.project}/${var.environment}/private_subnet_ids" #/roboshop/dev/vpc.id
    type = "String"
    value = join(",", module.vpc.private_subnet_ids)
    overwrite = true
  
}

resource "aws_ssm_parameter" "database_subnet_ids" {
    name = "/${var.project}/${var.environment}/database_subnet_ids" #/roboshop/dev/vpc.id
    type = "String"
    value = join(",", module.vpc.database_subnet_ids)
    overwrite = true
  
}