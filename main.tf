terraform {
  backend "remote" {
    organization = "consumer"
    hostname = "prepared-hound.ptfedev.com"

    workspaces {
      name = "using-external-module-cli"
    }
  }
}

module "dnd-again" {
  source  = "prepared-hound.ptfedev.com/producer/dnd-again/diceroll"
  version = "0.0.2"
}
