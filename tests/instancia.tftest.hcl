# valid_string_concat.tftest.hcl

variables {
  nomevm = "test"
}

run "validar_nomevm" {

  command = apply

  assert {
    condition     = aws_instance.this.tags["Name"] == var.nomevm
    error_message = "Nome VM Inválido"
  }
}

