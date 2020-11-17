class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCrROCM/zH8VR9RJutx4/QgsU1mn668QXLUmGoA08ExJQk2aB1KoJ8ZayHlG+QtSTgCjA/FaChq1jy/fFGQo0I2yZ88Sp8TtA8PhrR8X8GJLeqKuhGEpUtErI95W7vN8ma51rNka7vl4Z7MyGnslf6jYk1l+V7vf/4Oesk1/N3d9ea8hN3PQ+1sM1te8K4MtwfrvunMv7krWE2rdutnAe/8XVgUAlLSU0w9x1TAwjwNdjYOGn2nSWSUVayUhYrc04q42Oh70Sk9QVNHM7wsAR4RULYYMc7XD280/LiDNXf3IrGcQ+QjAxbDKzLkn0XSsLva5uZbksx5fiiL1sGDkQb9',
	}  
}
