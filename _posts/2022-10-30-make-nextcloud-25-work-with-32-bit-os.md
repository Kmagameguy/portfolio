---
layout: post
title: How To | Make Nextcloud 25 Work with 32-Bit Raspberry Pi OS
author: Kevin
tags: 
thumbnail: /assets/images/posts/2022-10-30-make-nextcloud-25-work-with-32-bit-os/thumb.png
image_path: /assets/images/posts/2022-10-30-make-nextcloud-25-work-with-32-bit-os
---

# Nextcloud 25: Fix Missing Files on 32-bit OS  
  
At time of writing it seems like the folks over at [Nextcloud][nextcloud] have unintentionally dropped support for 32-bit architecture.  After performing the upgrade to Nextcloud 25 I realized the file browser no longer worked.  This is a huge bummer for me since my Nextcloud installation is on a bare metal Raspberry Pi 3B+, which doesn't support 64-bit Raspberry Pi OS.  
  
Luckily, there is a workaround, but it seems like the days of running Nextcloud on older Pis may be numbered.
  
## Diagnosing The Problem  
  
Whenever I tried to enter Nextcloud's "Files" app I would see the following error message:  
  
```
This directory is unavailable, please check the logs or contact the administrator
```

Uh oh.  After closer inspection in the logs, I saw this related message:
  
```
Level    App    Message
Error    webdav TypeError:OCA\DAV\Connector\Sabre\FilesPlugin::OCA\DAV\Connector\Sabre\{closure}(): Return value must be of type ?int, float returned
```
  
If you're seeing the same messages then the notes below should work for you too.  We will simply allow the FilesPlugin method noted above to expect `float` values.  
  
## The Workaround  
  
Open the following file for editing (replacing `/path/to/your/nextcloud` with the exact path to your nextcloud folder.  Usually this is someplace like `/var/www/html/nextcloud`.):  
  
```
$ sudo nano /path/to/your/nextcloud/apps/dav/lib/Connector/Sabre/FilesPlugin.php
```
  
Jump to line 354 and change this:  
  
```
$propFind->handle(self::SIZE_PROPERTYNAME, function () use ($node): ?int {
```
  
to this:  
  
```
$propFind->handle(self::SIZE_PROPERTYNAME, function () use ($node): ?float {
```
  
If you can't see the edit, we've changed the expected return value from `?int` to `?float`.  Next, restart the apache server:  
```
$ sudo service apache2 restart
```
  
Test the file browser feature.  Everything should be working again.  As a side effect this also seemed to fix issues I was having with app updates.  One caveat: You may not be able to delete files larger than 2GB from your trashbin.  This is the only side-effect I'm aware of at this time.  

In any case, you should consider this workaround temporary.  It may stop working with future Nextcloud updates.  Realistically, once you apply this tweak it might be time to capture a backup and consider a migration plan to some other software or at least a 64-bit platform.  I am considering going all-in on [Syncthing][syncthing].

[nextcloud]:https://www.nextcloud.com
[syncthing]:https://www.syncthing.net
