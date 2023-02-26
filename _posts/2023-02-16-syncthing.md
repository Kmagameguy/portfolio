---
layout: post
title: Everything, Everywhere, All At Once (With Syncthing!) 
author: Kevin
tags: 
thumbnail: /assets/images/posts/2023-02-16-syncthing/thumb.png
image_path: /assets/images/posts/2023-02-16-syncthing
---

# Everything, Everywhere, All At Once (With Syncthing!)

<br />
<div class="row justify-content-center">
  <a href="{{ page.thumbnail }}"><img src="{{ page.thumbnail }}" alt="A top-down photograph of four floppy-disks, each in a different color on a flat, orange background"></a>
</div>
<div class="row justify-content-center">
  <i><small>Photo by <a href="https://unsplash.com/@behy_studio?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Behnam Norouzi</a> on <a href="https://unsplash.com/photos/8FsybY-URs0?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a></small></i>
</div>
<br />

In a [previous post][32bitnextcloud] I contemplated the idea of replacing [Nextcloud][nextcloud] with [Syncthing][syncthing].  Since then I've done exactly that.  Syncthing is a great piece of software and this post is going to take a surface-level look at how I've settled into it.

## What is Syncthing?
From the Syncthing website:

*"Syncthing is a continuous file synchronization program. It synchronizes files between two or more computers in real time, safely protected from prying eyes. Your data is your data alone and you deserve to choose where it is stored, whether it is shared with some third party, and how it's transmitted over the internet."*

Which is a long-winded way to say: Syncthing makes files and folders of your choosing available on any device of your choosing.

## Why Use Syncthing?

<blockquote><i><b>Nota Bene:</b> Syncthing is NOT a backup solution.  It is a file synchronization tool.  In its default configuration, deleting a shared file or folder on one device deletes it on ALL linked devices.  It is EASY to lose data if you are not careful.  Be sure you have a separate, reliable backup solution before you start sharing files with Syncthing.</i></blockquote><br />

I'll start by giving a high-level overview of my Syncthing likes & dislikes. I *like* Syncthing for a few reasons:
1. It does not *require* a dedicated server.
1. It has a native client for every major desktop and mobile operating system.
1. It features [end-to-end encryption][e2e].
1. It has some advanced features, such as simple file versioning; allow/block-listing; and read-only, write-only, or read/write permissions per host and/or per shared directory.
1. Offline changes are synchronized the next time the device connects to the network.

On the other hand, I *dislike* these aspects of Syncthing:
1. It is easy to set up but not as easy as it *should* be.  Non-geeky folks will think this is a hassle to install and configure.  I wish open source software got more attention from UI/UX designers.
1. Sometimes devices disconnect and won't reconnect until the client is restarted.
1. Conflict resolution could be improved.

## My Syncthing Configuration

In my network I am using Syncthing to mesh together three devices:
1. Chromebook
1. Gaming Desktop
1. Android phone

As mentioned above, Syncthing doesn't *require* a server.  Instead, clients can talk directly with one another.  Despite this I opted to create a hub-and-spoke model.  My media server acts as the hub into which all my other devices (the spokes, to keep up the analogy) share their files.

I went with this architecture because my media server is built to be resilient - I run [mergerfs][mergerfs] to evenly distribute files onto two disks, which are parity-checked nightly on a third disk with [snapraid][snapraid] to avoid bit-rot.  Each disk is 8TB, providing a total of 16TB of usable storage.  The media server is also backed up nightly with [restic][restic].  So, by serving as a hub my connected devices get free nightly parity checks and encrypted, _versioned_ backups.  Accidentally delete a file? No worries, my backups will likely have a record of it -- even if I've performed a backup _after_ deleting said file!

## Configuration Tips
Installing and configuring Syncthing could be a blog post all on its own.  Instead, here are a few interesting notes I took while configuring my Syncthing network.

### Keep Syncthing LAN-Only
While you can certainly open up ports or proxy traffic to-and-from Syncthing, I elected to keep the synchronization local-only.  Beyond the usual cautions that come with port-forwarding, I found that Syncthing works great even when it doesn't have a constant connection to my home network.  I can create and edit files on my phone while I'm out-and-about.  Syncthing will seamlessly mirror any changes to my other devices once I pop back onto the home network.  There's really no need for an always-on connection in my situation.

### Disable Relays
For some reason Syncthing defaulted to using Relays after I finished getting set up.  Relays are community-provided servers which bounce traffic between your devices over the public internet.  The documentation says these are only used when Syncthing can't make a direct connection between clients.  While this sounds nice in theory, relays often have painfully low throughput (in the kb/s range!).  Considering I'm used to gigabit speeds this was making me pull my hair out.  I was able to get direct connections working by doing the following:
1. For each client, I had to input the tcp address of each connected device.
1. For each client, I had to go into Settings > Connections and disable the "Enable Relaying" setting.
1. Restart each client.

Of course, this only works because I have pretty specific network segmentation via VLANs, PFSense, and static addresses.  Your mileage may vary here.

### Selective Sync
While Syncthing's GUI doesn't offer a selective sync option, you *can* achieve the same effect with its `.stignore` file.  For example, let's imagine you have this folder structure:
- foo/bar
- foo/baz
- foo/buzz

Where you are sharing the top-level folder, `foo`, but maybe you only want `foo/baz` on your phone.  To selectively sync the `baz` folder you could:
1. Open the Syncthing app.
1. Open the `foo` folder.
1. Tap the "Ignore Patterns" link.
1. Type the following into the `.stignore` file and save it:

```
!/baz
**
```

Then wait until the refresh interval or restart the Syncthing client on your phone.  Breaking down the lines above:
1. `**` means block everything.
1. `!/baz` is an exception rule for the `foo/baz` folder.  `/` is interpreted as the root folder, `foo`.

So all together your ignore-file is saying: Don't sync anything inside `foo` *except* the `baz` folder contents.


## Examples of My Synced Files

So far my use case is small-but-mighty.  If you aren't sure how Syncthing could fit into your toolkit, maybe these examples will spark ideas:
1. Not all games available through [Steam][steam] are compatible with its cloud save feature.  I use Syncthing to fill that gap, allowing me to play a game on my Chromebook and pick up where I left off on my Gaming Desktop (and vice versa).
1. I maintain a large collection of notes covering a variety of topics, such as my address book, to-dos, recipes, gift ideas, and other general purpose forget-me-nots.  With Syncthing I can make a note while I'm on-the-go and review it on any of my other devices once I get home.
1. I auto-export my browser bookmarks nightly so I can reference them from any of my devices.
1. I use a selective sync pattern like the one noted in the section above to get some of the music from my media server onto my phone.  The phone's music folder is set to `receive only` mode to avoid accidental file deletions.  As a bonus, the `.stignore` file is checked into a dotfiles-style git repo.  If I ever change phones I can simply copy over my `.stignore` file and Syncthing will re-download my music selections.  Some day I will ansible-ize my Android installation and become all powerful.

# Wrapping Up

So that is it!  Do you use Syncthing in a creative way?  Do you know about a feature I've probably missed?  Do you know how to address any of the problems in my "dislikes" list?  Let me know!

*P.S. If you haven't seen the eleven-times-academy-award-nominated [Everything Everywhere All at Once][eeaao] from which the article title draws inspiration, do yourself a favor and find it!!! I hope it wins EVERY award on March 12th!*

[32bitnextcloud]:{% post_url 2022-10-30-make-nextcloud-25-work-with-32-bit-os %}
[nextcloud]:https://www.nextcloud.com
[syncthing]:https://syncthing.net
[e2e]:https://en.wikipedia.org/wiki/End-to-end_encryption
[syncthing-downloads]:https://syncthing.net/downloads/
[syncthing-play]:https://play.google.com/store/apps/details?id=com.nutomic.syncthingandroid
[syncthing-fdroid]:https://f-droid.org/packages/com.nutomic.syncthingandroid/
[mergerfs]:https://github.com/trapexit/mergerfs
[snapraid]:https://github.com/amadvance/snapraid
[restic]:https://restic.net/
[steam]:https://store.steampowered.com
[eeaao]:https://en.wikipedia.org/wiki/Everything_Everywhere_All_at_Once