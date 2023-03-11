---
layout: post
title: Back to Basics
author: Kevin
tags:
thumbnail: /assets/images/posts/2013-01-14-back-on-the-wagon/thumb.jpg
thumbnail_alt: A grayscale rendering of an unlit candle
thumbnail_credit: Materials and rendering by me
---

Of course, right before a huuuuuge flare-up in my work schedule I'm feeling more zoned in than ever before.
I've started planning out a new survival/thriller game that I am hopefully going to follow through on.
Even though Peril On Monster Island 2 1/3 was a serious bomb, I learned how to (and not to do) a TON when creating a game.
I think this new project will be better suited to the UDK than POMI was since it uses a lot of the same mechanics as the average FPS.

Without going into the details of the project, one of the most immediate assets
I need developed is a portable candle light, along with the hand that holds it.
I started working on the candle asset today. Above is a rough of the low poly w/normal mapping applied.

Averaging ~1k polys. A bit denser than I'd like but it should be fine.
Once I had the geometry sorted out (though it's still under revisions), I crafted up a fairly basic diffuse
map that let me rough out a spec/detail normal map (At this point I just wanted to get a prototype
in-engine and worry about the fussy details later).

{% include lightboxImage.html
  img_path =  '/assets/images/posts/2013-01-14-back-on-the-wagon/maps.png'
%}

Once in-engine, I needed to setup a temporary room that fit the mood I'm going for, as well as had enough
room to play around in (I love the freedom of sandbox maps). The plan is to have upgradable light sources,
with this first one being the fallback "weapon" when the more powerful sources run out of fuel.
For the more advanced light sources (I'm thinking kerosene/oil lamps here), there'll be a toggle that
will allow the player to feed more fuel into the burner for increased light radius/intensity, but at
the cost of fuel. I have no idea if that's realistic or not, but it seems pseudo-science-y enough for me.
This was the sandbox I crafted:

{% include lightboxImage.html
  img_path =  '/assets/images/posts/2013-01-14-back-on-the-wagon/light1358176376.jpg'
%}

Next, I set to work bringing over my candle assets. The shader was probably the most involved part of the process.
I coupled a very, very subtle reflection vector with one of the default cubemaps to generate a faked reflection
for the metal surface and combined it with the diffuse map. The specular is pretty straightforward,
just with the normal map added for the benefit of shiny sharp corners. When I added the normal map,
I found it was just too subtle a change between the normal details and the low-poly version by itself,
so I used my diffuse map to bake out a detail normal map that gave the surface some nice fine crevices/dents:

{% include lightboxImage.html
  img_path =  '/assets/images/posts/2013-01-14-back-on-the-wagon/shader.jpg'
%}

This is what it currently looks like in-game. I really, really hate the texture seam on the candle,
so that's going to get nuked, and I'll probably bump up the whiteness of the candle to differentiate
it from the brass of the candlestick. I might try an emissive map as well that will hopefully give the candle
wax a little bit of a faked subsurface scattering look. Ignore the fire for now,
as that's just a default asset that will be replaced later. I don't know if it'll be a
mesh flame or a particle effect yet so I'll need to do a little playing around to figure that one out.

{% include lightboxImage.html
  img_path =  '/assets/images/posts/2013-01-14-back-on-the-wagon/teaser1358225957.jpg'
%}

{% include lightboxImage.html
  img_path =  '/assets/images/posts/2013-01-14-back-on-the-wagon/teaser21358225957.jpg'
%}

Up close reveals some ugly seams and a gross wax texture. With a little bit of touch ups
(a little more irregularity in the candle wax will go a long way),
and I'll probably be pretty satisfied with this asset. The next step will be crafting
a viewmodel hand to go with it. I'm a bit rusty when it comes to organic models,
so that should be an exercise in patience. I'll need to rig it, so this second phase will
probably take a bit of time to finish, but I think in the long run it'll set me up for some
very nice player animations.
