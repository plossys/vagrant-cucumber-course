# Vorbereitung

## Installation

1. VMware Workstation 12 (Pro) ganz normal installieren.
2. Vagrant 1.8.5 installieren https://releases.hashicorp.com/vagrant/1.8.5/vagrant_1.8.5.msi

## Konfiguration Vagrant

Falls Laufwerk C: nicht gleich eine große SSD ist, dann die Umgebungsvariable VAGRANT_HOME auf ein Verzeichnis auf der großen SSD setzen.

zum Beispiel:  `VAGRANT_HOME = X:\vagrant`

Hintergrund: Vagrant verwaltet lokale Vagrant Boxen, von denen Kopien gezogen werden. Und wenn das auf der (lahmen) C: Platte läge, wäre das nicht gerade förderlich, da das Kopieren dann lange dauert.

Die Umgebungsvariable bitte sowohl für den aktuellen Benutzer als auch für den `.\localadmin` eintragen.

## Lizenzierung Vagrant

In der Mail zum Vagrant VMware Plugin sollten die Schritte eigentlich drin stehen. Da müsste ja auch dann eine license Datei dabei sein.

```bash
vagrant plugin install vagrant-vmware-workstation
vagrant plugin license vagrant-vmware-workstation license.lic
```


## Vagrant Basisboxen

Vagrant Boxen liegen auf http://roecloudsrv001/vagrant/ 
Wer schon mal mag kann sich die Win 2012 R2 herunterladen mit

```bash
vagrant box add windows_2012_r2 http://roecloudsrv001/vagrant/windows_2012_r2_vmware.box
```

Vagrant muss für VMware in einer Admin Shell benutzt werden. Für Hyper-V auf Windows 10 sähe das genauso aus.

Das wäre erst mal alles für die Vorbereitung.

