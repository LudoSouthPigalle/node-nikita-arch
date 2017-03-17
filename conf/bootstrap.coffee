
module.exports =
  'nikita/lib/log/cli': 
     pad: host: 20, header: 60
  'nikita/lib/log/md':
    basedir: "#{__dirname}/log"
  'nikita/lib/ssh/open':
    host: '192.168.0.17'
    port: 22
    password: 'secret'
  './lib/bootstrap/1.welcome': {}
  './lib/bootstrap/2.disk_crypt':
    disabled: true
    disk: '/dev/nvme0n1'
  './lib/bootstrap/3.partitions_create':
    disabled: true
    disk: '/dev/nvme0n1'
  './lib/bootstrap/4.partitions_format':
    disabled: true
    partitions:
      '/dev/nvme0n1p1': 'f32'
      '/dev/nvme0n1p2': 'ext4'
  './lib/bootstrap/5.partitions_lvm':
    disabled: true
    passphrase: 'secret'
    partition: '/dev/nvme0n1p2'
  './lib/bootstrap/6.system_install':
    disabled: false
    locales: ['fr_FR.UTF-8', 'en_US.UTF-8']
    # locale: 'fr_FR.UTF-8' # Default to en_US.UTF-8
    timezone: 'Europe/Paris'
    users: wdavidw: uid: 1000, password: 'secret', sudoer: true
  'nikita/lib/ssh/close': {}