---
layout: post
title: Act I, Chapter I
author: Kevin
tags: 
thumbnail: /assets/images/posts/2013-02-23-act-i-chapter-i/thumb.png
---

{% include lightboxImage.html
  img_path='/assets/images/posts/2013-02-23-act-i-chapter-i/charevolution.png'
  img_text='Main Character Evolution'
%}

Since I have the weekend off, I decided I'd try and make the best of it by finally
putting to paper (or screen) the basic foundation for my point-and-click adventure/play game.
Pictured above is a tentative (possibly final) version of the main character.
The gameplay will sort of parody adventure games as well as theater plays - hopefully they go together well.
The basic premise is that the main character (pictured above) is the maid/housekeeper to Nikola Tesla during WWI.
While Tesla is away on business, she starts poking around his lab and accidentally fires up a machine that
causes a rip in space-time in which dinosaurs start trampling through. Suddenly the front lines are fraught
with all manner of dinos, effectively ending the war and leaving her (and the rest of humanity) sprawling to
clean up the mess!

{% include lightboxImage.html
  img_path='/assets/images/posts/2013-02-23-act-i-chapter-i/kismetsetup.jpg'
%}

Anyway, I was fortunate that some very generous people over at the UDN had done a ton of the
legwork for me already in creating the basis for an adventure game point-and-click system.
<a href="http://udn.epicgames.com/Three/DevelopmentKitGemsCreatingAMouseInterface.html" target="_blank">Creating A Mouse Interface with UDK</a>
After loading up those resources, I was really happy to see that I didn't need to tweak much
(the sinfully ugly default cursor is on the top of the priorities list).
The above kismet setup is pretty much the extent of the entire system.
One thing I'll need to do is implement a verb system, and the ability to switch between them
(eg grab/touch, speak to/with, look at). I'll probably stick to those three, and I'm not sure
if I want to work on an inventory system or not. If I do, I'll probably do it in scaleform vs an
unrealscript solution (or maybe even with the prebuilt Hourences kismet-based
<a href="http://www.hourences.com/tutorials-ue3-kismet-interface/" target="_blank">interface</a>).
In terms of gameplay, I'll probably divide it up into 3-4 Acts, which will have around 2-3 chapters each
(with each chapter featuring 1-2 puzzles).

{% include lightboxImage.html
  img_path='/assets/images/posts/2013-02-23-act-i-chapter-i/demo.gif'
%}

The barrel was originally a stand-in for The Housekeeper, but I had such a laugh with its dialogue that I'll probably leave it in as an inside joke/easter egg with myself. The verbing will be pretty easy to implement, and I'll probably start working on a scaleform HUD tomorrow as well.
