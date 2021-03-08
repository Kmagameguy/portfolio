---
layout: post
title: Populating a 3D Scene
author: Kevin
tags: 
thumbnail: /assets/images/posts/2013-01-29-populating/thumb.jpg
---
{% include lightboxImage.html
  img_path='/assets/images/posts/2013-01-29-populating/preview.jpg'
  img_text='In-Engine (UDK) demo'
%}

After a bit of inactivity, I spent some time crafting a few props today.
It's always been difficult for me to kick off a project when it's in such a nebulous phase.
I'm still not sure if I want it to be an FPS, or a sidescrolling adventure game that is
staged like a play (animating lights and flipping an entire stage full of props around sounds fun as hell).

One of the mechanics I really want to include is the ability to increase the power of your primary light source by
"increasing" the oil-flow into the lit wick. The trouble with my initial model is that it was a candlestick and
not something that could logically have a variable intensity. So I set out to make a whale-oil lantern.
Hunting down the reference for this was surprisingly difficult.

{% include lightboxImage.html
  img_path='/assets/images/posts/2013-01-29-populating/Lantern.png'
%}

This lantern required two separate UV channels - One for the overall metal, and one
for the transluscent materials like the flame and the glass. I realize I could have done both of these
on the same UV channel with a bit of creative masking, but I wanted to use the extra UV space to get
a bit of subtle grime/dust added to the glass itself, which might have been a bit difficult at a smaller
scale inside the first UV channel's 1:1 space. I love that the metal's UV channel ended up looking like a face.
The lantern mesh is a bit dense, but I figured it'd be a good idea to allocate a few extra polys to it
since it'll be up-in-your-face through the whole experience.

After I had the secondary "weapon" finished, I started working on some general props that you might find in an early
1700s colonial farm village. I ended up creating a fence (with an endcap prop), a barrel, and a wooden bench.
I wanted the fence to be a modular prop, so I paid special attention to creating it within a 128x128 square so
that it'd easily tile on UDK's gridspace.

{% include lightboxImage.html
  img_path='/assets/images/posts/2013-01-29-populating/Model.png'
%}

Unlike the lantern, this model is all enveloped inside one UV channel, with a LOT of the repeated elements overlapping
in the UV space. I think the polycount on this one turned out pretty good, I might have been able to get away
with a few extra cuts for more plank detail, but since the game is going to be pretty dimly lit anyway,
I figured it'd be wasted as the silhouette wouldn't have changed much. I was able to recycle all of the elements
in the fence prop to create the endcaps, so there's no extra textures or materials on that model.
Can't beat two for the price of one.

At this point I'm a little concerned about spending much time on developing any homes/shacks/cottages as I don't know
what direction I'm taking this in yet - but I think I have enough props to start layering something together.
I'll probably see if I can come up with some creative lighting solutions in the meantime to create visual
interest in an otherwise pitch-dark environment.
