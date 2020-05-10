# qemu-kvm-ev

modified qemu-kvm-ev for CentOS 7: add TPM Support

**current version: 2.12.0-44.1.el7_8.1**

Original qemu-kvm-ev: REPO 'centos-release-qemu-ev'

Source Code: [SRPM](http://vault.centos.org/centos/7.8.2003/virt/Source/kvm-common/qemu-kvm-ev-2.12.0-44.1.el7_8.1.src.rpm)

Download rpm from [releases](https://github.com/Akiko97/qemu-kvm-ev/releases)

## Install RPMS (Already installed EV version)

```shell
sudo rpm -e --nodeps qemu-kvm-ev-<version>.x86_64
sudo rpm -i qemu-kvm-ev-<version>.rpm
sudo rpm -e --nodeps qemu-kvm-common-ev-<version>.x86_64
sudo rpm -i qemu-kvm-common-ev-<version>.x86_64.rpm
sudo rpm -e --nodeps qemu-img-ev-<version>.x86_64
sudo rpm -i qemu-img-ev-<version>.x86_64.rpm
```

## Upgrade from Non-EV version

```shell
sudo yum install -y centos-release-qemu-ev
sudo yum install -y centos-release-ceph-nautilus
sudo yum update -y
sudo yum install -y qemu-kvm-ev
```

then follow `Install RPMS (Already installed EV version)`

## build source code

```shell
sudo yum install -y rpm-build pkgconfig
sudo yum install -y gnutls-devel cyrus-sasl-devel libaio-devel pciutils-devel libiscsi-devel ncurses-devel libattr-devel libusbx-devel usbredir-devel texinfo spice-protocol spice-server-devel libcacard-devel nss-devel libseccomp-devel libcurl-devel libssh2-devel librados2-devel librbd1-devel glusterfs-api-devel glusterfs-devel systemtap-sdt-devel libjpeg-devel libpng-devel libuuid-devel bluez-libs-devel brlapi-devel check-devel libcap-devel rdma-core-devel gperftools-devel iasl lzo-devel snappy-devel numactl-devel libgcrypt-devel device-mapper-multipath-devel systemd-devel libcap-ng-devel libxkbcommon-devel libepoxy-devel libdrm-devel mesa-libgbm-devel
```

```shell
cd SPECS
rpmbuild -ba qemu-kvm.spec
```

