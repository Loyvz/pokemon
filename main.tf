provider "aws" {
  region = "us-east-1" # Cambia la región si es necesario
}

# Verificar si el bucket ya existe
data "aws_s3_bucket" "existing_bucket" {
  bucket = "pokemon-platino-bucket-lgutierrez" # Nombre del bucket
}

# Solo crear el bucket si no existe
resource "aws_s3_bucket" "pokemon_platino_bucket" {
  count  = length(data.aws_s3_bucket.existing_bucket.id) > 0 ? 0 : 1
  bucket = "pokemon-platino-bucket-lgutierrez"

  lifecycle {
    prevent_destroy = true # Evita que se borre accidentalmente
  }
}
