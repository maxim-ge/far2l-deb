# far2l-deb

**Readme in english is below**

**Consider using https://launchpad.net/~far2l-team/+archive/ubuntu/ppa instead**

.deb пакеты [far2l](https://github.com/elfmz/far2l) (linux порт [Far Manager 2](http://www.farmanager.com/index.php?l=ru)) для Ubuntu/Mint.

В пакет включены:
- FTP/SFTP/WebDAV/SMB клиент на базе gio [far-gvfs](https://github.com/cycleg/far-gvfs).
- SFTP клиент на базе sshfs [far2l-fuse](https://github.com/unxed/far2l-fuse) (pre-alpha!)

Если нет пакета для нужного дистрибутива или архитектуры, вы можете попробовать собрать пакет самостоятельно, используя скрипт `make_far2l_deb.sh`.

По умолчанию far2l работает как GUI-приложение на wxWidgets. Также поддерживается экспериментальная работа в консоли, запускается по `far2lc`. Запускать в консоли просто как `far2l` или `far2l --tty` не следует, могут быть проблемы с монтированием gvfs.

Консольная версия лучше всего работает во встроенном терминале wx-версии. Но и в xterm и его производных тоже можно пользоваться, хотя работают не все горячие клавиши. А вот через putty не передаются почти никакие горячие клавиши, [в терминале wal commander](http://www.wal-commander.org/home/download) с этим лучше. Есть ещё вот такой форк putty, там теоретически должно работать больше клавиш (не проверялось): https://github.com/adizero/putty-X (у кого получится собрать, поделитесь, пожалуйста, бинарниками).

Установка:
```
sudo dpkg -i ПАКЕТ_ДЛЯ_ВАШЕГО_ДИСТРИБУТИВА.deb
sudo apt-get install -f
sudo dpkg -i ПАКЕТ_ДЛЯ_ВАШЕГО_ДИСТРИБУТИВА.deb
```

---

.deb packages of [far2l](https://github.com/elfmz/far2l) ([Far Manager 2](http://www.farmanager.com/index.php?l=en) linux port) for Ubuntu/Mint.

Package includes:
- [far-gvfs](https://github.com/cycleg/far-gvfs) gio-based FTP/SFTP/WebDAV/SMB client
- [far2l-fuse](https://github.com/unxed/far2l-fuse) sshfs-based SFTP client (pre-alpha!)

If there is no package for your OS release or architecture, you may try to build package yourself using `make_far2l_deb.sh`.

far2l defaults to run as GUI app based on wxWidgets toolkit. You can run `far2lс` to get very experimental console support; do not run `far2l` or `far2l --tty` in console directly to avoid gvfs mount problems.

Console-based version works best inside internal terminal of wx-based version, but is still usable under xterm and its derivatives. Unfortunately, putty fails to process most of the hot keys, [wal commander's terminal](http://www.wal-commander.org/home/download) does this job better. There is also a fork of putty with some hot key processing fixes (not tested): https://github.com/adizero/putty-X (please share your binaries if you manage to build it).

Installation:
```
sudo dpkg -i PACKAGE_FOR_YOUR_DISTRO.deb
sudo apt-get install -f
sudo dpkg -i PACKAGE_FOR_YOUR_DISTRO.deb
```

