user { 'pieter':
  ensure           => 'present',
  gid              => 'pieter',
  groups           => ['wheel'],
  home             => '/home/pieter',
  shell            => '/bin/bash',
}

ssh_authorized_key {'pieter':
  ensure => present,
  key    => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAt0Hl1Gqe0NTcN15A0nHdK/gfgja8zkkh406YIDC8m1mVkXD8b5XzUrryvjHAoTrSu5itMVNciGtHoCE5bgIeumamn+9HEke37K1q/cPIGCCkpVMRYMffQ8iEXhzZRw1XNtzdHRi3D5N31yXvU3POPTlf6cKgjm9cEdRfdxWegyr1O93CMmI1K+UW32vypZ//4xv+XPI5/QMOBWteXSbmt/wCT8yt1B0j+fvcWfetLWQyiTOzj/pbGqBlG0CST0GNVZ9EB7TNeBVgVEvyoC0ZlO0pR0hFVbtXKFM/YaTYf7tqs0hQ/uNjtkQvz8aXoFFmt+07N7Ta1qq8xfNfZ0vwlw==',
  type   => 'ssh-rsa',
  name   => 'pieter@pieter-desktop',
  user   => 'pieter',
}

group { 'pieter':
  ensure => 'present',
  gid    => '1000',
}
