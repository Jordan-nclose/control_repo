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
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDWxJE2lNK8Qz5qwCdVcmz5ijrLNtxhqKFAZlxUgRPVrxN937H6p8DYWaYc2TM+229yszNOA5W46aL6pO4zcRNxPUYfYXwg/o+a+yTNPG18XPnCZfGryxyoaxGFf1rt7DXP/Rq5PkhotG40uJ7gaHKrUqizWR1BiN9elGTPwcHZ+U09jwdVzdEdMZAqvDdTFOcaWJumlni0XYjtvbmSJ5cPvTdp+xKBr8ndytVIbznZK03lTgX4TJ+c7utQdgUDu49o08S8J9FEmVl+IbtR2uRH9wrvC59sMndSDD1djodP5BomuoPzCt9+KhLMGDePCqEQ1tq67hbGMIFzcJPWOG0j root@master.puppet.vm',
	}  
}

          
          
          
          
         
