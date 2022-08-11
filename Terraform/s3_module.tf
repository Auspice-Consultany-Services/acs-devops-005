module "website_s3_bucket" {
  source = "./modules/s3"

  bucket_name = var.module_bucket

}
