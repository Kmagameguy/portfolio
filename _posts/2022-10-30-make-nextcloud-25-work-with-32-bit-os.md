---
layout: post
title: How To | Make Nextcloud 25 Work with 32-Bit Raspberry Pi OS
author: Kevin
tags: 
thumbnail: /assets/images/posts/2022-10-30-make-nextcloud-25-work-with-32-bit-os/thumb.png
image_path: /assets/images/posts/2022-10-30-make-nextcloud-25-work-with-32-bit-os
---

# Nextcloud 25: Fix Broken File Browser on 32-bit OS  
  
At time of writing it seems like the folks over at [Nextcloud][nextcloud] have [unintentionally dropped support for 32-bit architecture][issue-notes].  After performing the upgrade to Nextcloud 25 I realized the file browser no longer worked, as suggested by that open issue thread.  This is a huge bummer for me since my Nextcloud installation is on a bare metal Raspberry Pi 3B+, which doesn't support 64-bit Raspberry Pi OS.  
  
Luckily, there is a workaround, but it seems like the days of running Nextcloud on older Pis may be numbered.  This is a huge shame for self-hosters like myself who like a small-footprint media server, given the scarcity of Raspberry Pis.  Hopefully the good folks at Nextcloud will consider addressing this problem, but given their signals that 32-bit support is on its way out, I'm not holding my breath.  For now, we can at least get things running again.  
  
## Diagnosing The Problem  
  
In my case, the issue manifested whenever I tried to enter Nextcloud's "Files" app.  Instead of seeing my directories I was greeted by the following banner message:  
  
```
This directory is unavailable, please check the logs or contact the administrator
```

Uh oh.  After closer inspection of the server logs, I saw this related message:
  
```
Level    App    Message
Error    webdav TypeError:OCA\DAV\Connector\Sabre\FilesPlugin::OCA\DAV\Connector\Sabre\{closure}(): Return value must be of type ?int, float returned
```
  
If you're seeing the same issue then the notes below should work for you too.  We will simply tell the FilesPlugin method from the log above to expect `float` values.  
  
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
  
And save the file (`ctrl + x`, then `ctrl + y`).  If you can't spot the edit we've changed the expected return value from `?int` to `?float`.  Next, restart the apache server:  
```
$ sudo service apache2 restart
```
  
Test the file browser feature.  Everything should be working again.  As a side effect this also seemed to fix issues I was having with app updates.  One caveat: You may not be able to delete files larger than 2GB from your trashbin.  This is the only side-effect I'm aware of at this time.  
  
## Final Thoughts  
  
Even if the steps above restore access to your files you should consider this workaround temporary.  It may stop working with future Nextcloud updates.  Realistically, once you apply this tweak it might be time to capture a backup and consider a migration plan to other software or at least a 64-bit platform.  I am considering going all-in on [Syncthing][syncthing].  
  
[nextcloud]:https://www.nextcloud.com
[issue-notes]:https://github.com/nextcloud/server/issues/34674
[syncthing]:https://www.syncthing.net
