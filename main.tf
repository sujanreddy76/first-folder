#Configure a provider
#Google cloud
provider "google" {
  project     = "euphoric-column-472107-p3"
  region      = "us-central1"
  credentials = file("key.json")
}

#Create a vpc
resource "google_compute_network" "vpc-1" {
    name = "terraform-vpc-demo"
    auto_create_subnetworks = false  
}