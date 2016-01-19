# == Class: sel-daemon
#

class sel-daemon
{
  $devstack_dir = '/home/stack/devstack'
 
  file { "$devstack_dir/lib/sel-daemon":
	owner => $user,
    group => $user,
    mode => '0755',
    source  => 'puppet:///modules/sel-daemon/sel-daemon',
	require => Exec['devstack_clone'],
  }

  file { "$devstack_dir/extras.d/90-sel-daemon.sh":
	owner => $user,
    group => $user,
    mode => '0755',
    source  => 'puppet:///modules/sel-daemon/90-sel-daemon.sh',
	require => Exec['devstack_clone'],
  }
}
