#!/bin/bash
echo "Particiones del disco"
sudo fdisk -l

 sudo fdisk /dev/sdc
 n
 p


 +1G
 n
 p


+1G
 n
p


+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

1016 MiB
w

echo "Formateo de particiones"

sudo fdisk -l
sudo mkfs -t ext4 /dev/sdc1
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mkfs -t ext4 /dev/sdc7
sudo mkfs -t ext4 /dev/sdc8
sudo mkfs -t ext4 /dev/sdc9
sudo mkfs -t ext4 /dev/sdc10
sudo mkfs -t ext4 /dev/sdc11


echo "pasos para el montaje"

cat /etc/fstab


echo '/dev/sdc1  /home/vagrant/repogit/Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0' | sudo tee -a /etc/fstab

echo '/dev/sdc2  /home/vagrant/repogit/Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0' | sudo tee -a /etc/fstab

echo '/dev/sdc3  /home/vagrant/repogit/Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0' | sudo tee -a /etc/fstab

echo '/dev/sdc5  /home/vagrant/repogit/Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0' | sudo tee -a /etc/fstab

echo '/dev/sdc6  /home/vagrant/repogit/Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0' | sudo tee -a /etc/fstab

echo '/dev/sdc7  /home/vagrant/repogit/Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0' | sudo tee -a /etc/fstab

echo '/dev/sdc8  /home/vagrant/repogit/Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0' | sudo tee -a /etc/fstab

echo '/dev/sdc9  /home/vagrant/repogit/Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0' | sudo tee -a /etc/fstab

echo '/dev/sdc10  /home/vagrant/repogit/Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0' | sudo tee -a /etc/fstab

echo '/dev/sdc11  /home/vagrant/repogit/Examenes-UTN/profesores ext4 defaults 0 0' | sudo tee -a /etc/fstab

sudo mount -a


sudo lsblk

