resource "aws_key_pair" "ssh_key" {
  key_name   = "terraform-demo"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrJGss4aRm95ubZBQ25aG+CvDPfT3Q2mDogp1Tx91PRlc1dVGQYyNxuXClB/SMBmIzEKklyGVhrmGc9nIJYCzgZo7ju0kmThniMePC03pEpnsc4EC2tsko2bT/SurG1CQgmUgdwrbco517e1p9GJCDjb2P2GsIgK4EzWNZPNB8OQ2O9Kn8hbbGZDJC/kUmsLr9X+qVYZAwLLitajNE5aVlZqwSuuYp2ykS/V9X6T+dXjDnjl7HkUtk0XsTbjAlY3sQG2mCdvITeylQzUhaWhB75dJxATqNbdkI2M+hOGjtF+f13R4NkRTxpYJzESqGvXwB/Ty/Mr1idpl99HkSJg8Jm9hFtjfpA1Ses4kQT/wXzyxm1AV1/nH2VDC+v43mdX1ArLOjEcH1ZERQyKiUpJWB8UBzc5KScGWWUatA1rXPzDxScWqLecxPFjDODVXFWfE1ktntknFB3+ukeWa2BQMeAE+TDTL4ctIVLMAHqQaMqn72BpoWuaSwKL6WkKTV7l8= ramku@RamCheekoti-Lenovo11"
}