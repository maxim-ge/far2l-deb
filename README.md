# far2l-deb
.deb пакет [far2l](https://github.com/elfmz/far2l) (linux порт [Far Manager 2](http://www.farmanager.com/index.php?l=en), включая FTP/SFTP/WebDAV/SMB клиент [far-gvfs](https://github.com/cycleg/far-gvfs)).

Пакет собирается под архитектуру amd64 для Mint 19 / Ubuntu 18.04.

На debian jessie и/или 32-разрядных дистрибутивах вы можете собрать пакет самостоятельно, используя скрипт make_far2l_deb.sh.

На более старых дистрибутивах это скрипт, возможно, тоже будет работать, хотя не факт.

Если у вас не завелось - пишите тикет, возможно, я смогу с этим что-нибудь сделать (или нет).

PS: far2l_64_tty.deb собирается с поддержкой работы в консоли. Запускать "far2l --tty". Код экспериментальный! На свой страх и риск.

---

.deb package for [far2l](https://github.com/elfmz/far2l) ([Far Manager 2](http://www.farmanager.com/index.php?l=en) linux port, including [far-gvfs](https://github.com/cycleg/far-gvfs) plugin as FTP/SFTP/WebDAV/SMB client).

Package is built for amd64 architecture targeting Mint 19 / Ubuntu 18.04.

On debian jessie and/or 32-bit distros you may try to build package yourself using make_far2l_deb.sh.

On older distros make_far2l_deb.sh may or may not work.

Feel free to report any issues.

PS: far2l_64_tty.deb has far2l built with tty mode support. Run with "far2l --tty". Experimental! Use at your own risk.
