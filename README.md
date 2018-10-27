# far2l-deb

**Readme in english is below**

.deb пакет [far2l](https://github.com/elfmz/far2l) (linux порт [Far Manager 2](http://www.farmanager.com/index.php?l=ru), включая FTP/SFTP/WebDAV/SMB клиент [far-gvfs](https://github.com/cycleg/far-gvfs)) для Ubuntu/Mint.

Если нет пакета для нужного дистрибутива или архитектуры, вы можете попробовать собрать пакет самостоятельно, используя скрипт make_far2l_deb_tty.sh.

Используется ветка backend-separation, поддерживающая работу в консоли, запускать `far2l --tty`. Поддержка консоли экспериментальная! Использование на свой страх и риск. NB! putty не передает часть горячих клавиш, во встроенной терминалке wal commander с этим лучше.

Чтобы на безыксовом сервере заработал gvfs-плагин, не забудьте сделать `sudo apt install gvfs-fuse`, при этом запускать far2l надо, используя `far2lc.sh`, он в этом же репозитории.

---

.deb package of [far2l](https://github.com/elfmz/far2l) ([Far Manager 2](http://www.farmanager.com/index.php?l=en) linux port, including [far-gvfs](https://github.com/cycleg/far-gvfs) plugin as FTP/SFTP/WebDAV/SMB client) for Ubuntu/Mint.

If there is no package for your OS release or architecture, you may try to build package yourself using make_far2l_deb_tty.sh.

As backend-separation branch is used, run with `far2l --tty` to get VERY EXPERIMENTAL console support; use at your own risk. NB! putty fails to process some hotkeys, wal commander internal terminal works better.

To use gvfs-plugin on X11-less server, don't forget to do `sudo apt install gvfs-fuse`, then use provided `far2lc.sh` to launch far2l.

