provider "aws" {
  region = "us-east-1" # Cambia la región si necesitas otra
}

resource "aws_s3_bucket" "pokemon_platino_bucket" {
  bucket = "pokemon-platino-bucket-lgutierrez" # Cambia el nombre si ya está en uso
}
