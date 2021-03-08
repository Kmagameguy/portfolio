---
layout: post
title: Exprimenting with Normal Maps
author: Kevin
tags: 
thumbnail: /assets/images/posts/2013-02-01-exprimenting-with-normal-maps/thumb.jpg
---

{% include lightboxImage.html
  img_path='/assets/images/posts/2013-02-01-exprimenting-with-normal-maps/preview.jpg'
%}

Finished a couple new assets today. I've always been intrigued by the amount of detail in Epic's
(and really any other AAA studio's) normal maps. Usually I lift my normal maps straight from my diffuse maps.
Generally, doing so has produced some reasonable results, but because of this they've never yielded
DEEP/DRAMATIC results. I decided to play around with that today. The Well in the picture above
clocks in at about 170 polys. For this normal map, I took a new approach to my process by
cranking out a highly detailed model of the well (with individual stones) and baked the information
out to the low poly. I've known about texture baking for years, but I've never bothered with using it
extensively on normal maps. I'm glad I did this time. Below is a breakdown of the process:

{% include lightboxImage.html
  img_path='/assets/images/posts/2013-02-01-exprimenting-with-normal-maps/Well.png'
%}

Because I hadn't tried baking such a drastic normal map before, I went in expecting less than
stellar results. I was absolutely flabbergasted when I first loaded the base normal map into the UDK.
From there I didn't have to do much - I cranked out a super simple diffuse and specular map and lifted a
detail normal map from the diffuse pass using my old method of normal map creation. Once I overlaid the
detail normal with the baked normal map, I called it done.

Just to make sure it wasn't a fluke, I went ahead and built the bucket to go with the well.
The process was very similar - make a low poly, craft a high poly, and bake everything down from there.
The biggest difference was the diffuse map which needed a little more love for the finer details.

{% include lightboxImage.html
  img_path='/assets/images/posts/2013-02-01-exprimenting-with-normal-maps/Bucket.png'
%}

Once I had the high poly built and baked, the rest was pretty standard. I gave it a little bit of flourish
with a simple bone rig and PhysicsAsset so that it can be knocked around in-game.

{% include lightboxImage.html
  img_path='/assets/images/posts/2013-02-01-exprimenting-with-normal-maps/final_comp.jpg'
  img_text='The scene as it currently stands'
%}

I'm starting to run out of prop ideas now, so I might have to bite the bullet and start cranking out
the bigger assets like houses/shacks.
