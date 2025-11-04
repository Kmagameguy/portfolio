---
layout: post
title: How To | Tame a Stock Ender3 V2 Printer
author: Kevin
tags: 
thumbnail: /assets/images/posts/2022-01-31-ender3v2-prints/thumb.jpg
thumbnail_alt: 3D Printed low-poly dinosaur, a lucky cat, and pint-sized, modular storage drawers
thumbnail_credit: Photo by me
image_path: /assets/images/posts/2022-01-31-ender3v2-prints
---
  
My first exposure to 3D printing was in High School.  At that time, our shop had a [Z Corp Z402][zcorp] - an early 3D printing unit that was about the size of a vending machine.  A rapid-prototyping machine, it would deposit a liquid binding material onto a bed of powder.  After each pass a fresh layer of powder would get spread on top and more binding material was laid down.  Slowly this would build up into your final model.  Once the print was finished you'd unearth your print from the leftover powder like you were retrieving a rare artifact from an archeological dig.  
  
Needless to say, the experience stuck with me.  So when I saw a new [Creality Ender3 V2][creality-ender] 3D Printer on sale for ~$150 USD a couple months ago I snatched it up quickly!  Just as quickly I learned two things:
1. 3D printing with filament was much different than printing with powder & glue
1. 3D printing, despite its advances, was much more difficult than my nostalgia-tinted frames remembered
  
Happily, though, I think I've largely figured things out so I wanted to write up a post that captures my process & notes.  Mostly this is self-serving, in case I forget any details and need to refer back to them later, but also to help anyone else who might be struggling with their new printer, too.  The thing that struck me about the 3D printing world is its users seem *fast* to recommend modifications or upgraded parts as panacea for printing problems.  While I no doubt believe sinking a couple Jacksons into upgrades can make life easier, they're not _necessary_ to have a good printing experience.  
  
## My Tools  
  
<div class="row justify-content-center mb-3">
  <a href="{{ page.image_path }}/ender.jpg"><img src="{{ page.image_path }}/ender.jpg" alt="A photograph of my assembled Ender3 V2"></a>
</div>
<div class="row justify-content-center mb-3">
  <a href="{{ page.image_path }}/gear.jpg"><img src="{{ page.image_path }}/gear.jpg" alt="A photograph of my tools"></a>
</div>

My toolkit is very simple:  
  
1. [Creality Ender3 V2 3D Printer][creality-ender]
1. [Tweezerman Point Tip Tweezer][tweezerman]
  - Helpful for cleaning filament from small areas
1. [Flush-Cut Wire Cutters][wire-cutters]
  - Great for clipping off support structures or build plates from the finished print
1. [Long-Nose Pliers][pliers]
  - The insulation makes these more useful than the included wrench set since it protects from live, heated parts.  Just be careful not to damage any parts with it
1. 70% isopropyl alcohol
  - Use this to wipe down the bed
1. Small Filling-Style Palette Knife (included with the 3D Printer)
  - Good for tamping down first-layer lines or unsticking finished prints from the bed
1. A sheet of 20lb, 8.5" x 11" piece of printer paper

<i>*Note: None of the links above are affiliate links, I do not earn any commission on purchases made through them.</i>  
  
## Optimizing the Ender3 V2 Machine  
  
Before getting into software, the build quality of your 3D printer is just as important to get right.  Here are some tips:  
  
### Tightening the Frame  
  
<div class="row justify-content-center mb-3">
  <a href="{{ page.image_path }}/frame_tightening.jpg"><img src="{{ page.image_path }}/frame_tightening.jpg" alt="A photograph of the X-axis joints that need tightening"></a>
</div>  
  
One of the first things to check is whether the frame is snugged up well.  This includes checking the grame and gantry with the included allen wrenches.  Everything should be tightly joined (but don't overdo it!)  Even if your machine is pre-assembled it doesn't hurt to check -- things can come loose during transit.  
  
Pay special attention to the X-axis arm, which can droop easily if the ends aren't tightened well.  The three joints highlighted in the photo above can help alleviate any droop that can occur as the arm moves up and down on the z-axis.  You'll know if you got the tension right if (gentle) upward lift on the end opposite the stepper motor produces very little movement before generating strong resistance.  Remember that tolerances in 3D printing are measured in millimeters, so small variances can produce large effects.  
  
### Adjusting the Extruder Nozzle  
  
Make sure the extruder nozzle is snug in its socket before printing.  Gaps between the nozzle and the tubing can result in filament leakage, and the last thing you want is to drip filament all over your multi-hours long print!  
  
<div class="row m-3 p-3" style="background-color: #efefef">
  <p><b>WARNING</b></p>
  <p>The instructions below will ask you to work with components that are pre-heated.  3D printers generate <i>frightening</i> amounts of heat so please be extremely careful when touching any parts that may be hot.  Never touch components directly -- instead use tools like the pliers mentioned above and always ensure you have good insulation between the tool and your bare skin.</p>
</div>  
  
1. Carefully remove the rubber sock that wraps around the extruder nozzle and the heater block
1. Turn ON the printer and pre-heat the nozzle to around 210c
1. Once pre-heated, use an insulated wrench or pliers to tighten the nozzle in its socket. Do NOT overdo it or you may crack or strip the nozzle and its socket -- just make sure the nozzle is securely in place.  
  
### Bed Leveling  

<div class="row justify-content-center mb-3">
  <a href="{{ page.image_path }}/bed_level.jpg" alt="A photo of the Ender3 V2 extruder nozzle during a print, demonstrating the distance from the bed"><img src="{{ page.image_path }}/bed_level.jpg" width="600"></a>
</div>
  
People seem to make a lot of noise about bed leveling.  You don't need any fancy tools, and this is actually one of the few calibrations that works fine even if the leveling is "good enough".  

<div class="row m-3 p-3" style="background-color: #efefef">
  <p><b>Quick Note on Bed Quality:</b></p>
  <p>Out of the box, many entry-level 3D printers have beds that are not manufactured well.  While Creality has done a lot to improve the glass bed that ships with the Ender3 V2, I still ended up with a warped bed.  In my case, the center of the bed bows upward ever-so-slightly, which means I tend to position all prints ona Y-axis offset to avoid this raised area as much as possible.  If you have a similar issue you may need to employ a similar strategy.</p>
</div>
  
**Leveling Procedure**
  
1. Turn ON the printer and use the menu to auto-home the extruder & bed
1. Preheat the printer ~10 degrees hotter than your normal printing temperature
  - *Example: If you typically print PLA at 195c, set the preheat temperature to 205c*
1. Use the menus to disable the stepper moter
1. Gently position the extruder nozzle above the center-point of one of the bed's leveling knobs
1. Raise the corner by turning the knob.  Stop when there is about a 1/8" gap between the nozzle and the bed
1. Repeat for each corner of the bed, moving in a clockwise (or counter-clockwise) motion
1. Grab a piece of paper
1. Once again, position the extruder nozzle above the center point of one of the bed's leveling knobs
1. Insert the paper between the nozzle and the bed
1. Gently raise the bed's corner using the leveling knob.  As you do so, move the paper back and forth. Stop raising the bed when you feel the faintest rubbing from the nozzle
1. Repeat the previous two steps for each remaining corner, but this time move diagonally opposite
  - *Example: If you started with the front-left knob, move to the back-right, then back-left to front-right*
1. While doing this you may encounter spots where the nozzle collides with the bed.  If this happens STOP moving the print head and lower the bed a little bit, using the knobs the print head is positioned between
  - *Example: If the nozzle hits the back of the board, between the back-left and back-right knobs, lower the bed using both of those knobs until there is clearance*
1. Repeat the paper test in caddy-corner fashion until you are feel slight catching from the paper in each corner
1. When all seems good, run the print head over the middle of the board front-to-back and side-to-side.  If you collide with the bed somewhere in the middle of the board, use all four knobs to slowly lower it an equal amount all around

After 2-3 passes your bed leveling should be "good enough".  Given enough experience you will probably be able to visually do bed leveling without the paper.  Like I said above, it doesn't need to be perfect -- feeling a little resistance, or positioning the bed a hair lower than the resistance point will be good enough.  In fact, I'd say it's a better to have the bed a little too low than a little too high.  Lower than perfect can still give you a print, whereas too high risks damage to the extruder and bed -- especially if the filament has no point of egress.  
  
Congrats!  Your 3D printer is all shored up.  Now we can start to fiddle with the software side of things.  
  
### Finding Things to Print  

<div class="row justify-content-center mb-3">
  <a href="{{ page.image_path }}/zandvoort.jpg" alt="a 3d printed representation of the formula1 circuit zandvoort, in the netherlands"><img src="{{ page.image_path }}/zandvoort.jpg"></a>
</div>
  
Nowadays you don't have to be a 3D artist to print things.  In fact, the Ender3 V2 includes an SD card with a few nice test models pre-loaded.  If you want to expand your horizons, though, check out [Thingiverse][thingiverse].  Thingiverse is hosted by the manufacturer of MakerBot 3D printers, but includes community-submitted files that are (generally) 3D printer-agnostic.  Everything is free to download and print, just make sure you respect the licenses of each model.  Some models also include suggested print settings in their Summary section, so pay close attention to those, too!  
  
Here are a few models I've downloaded and printed myself if you're looking for a few ideas to get you started:  
  
- [Low Poly T-Rex][trex]
- [Fast-Printing Modular Drawer System (Vase Model)][drawers]
- [Raspberry Pi Zero + Ethernet / USB Hat Case (Pihole)][pi-case]
- [F1 Circuits with Tags (36 Circuits)][formula1]
  - *Protip: These make GREAT bed-level tests that you'll want to keep, rather than throw away*

### Slicer Software  
  
<div class="row justify-content-center mb-3">
  <a href="{{ page.image_path }}/ultimaker.PNG" alt="a screenshot of the slicer software, ultimaker cura"><img src="{{ page.image_path }}/ultimaker.PNG" width="600"></a>
</div>  
  
3D printers cannot directly read 3d model files.  Instead these are fed into a specialized piece of software, called a slicer, which converts the 3D data into the commands that will move the extruder nozzle through 3D space.  These commands are called `gcode` and thankfully, you probably won't ever have to interact with it directly since slicer software is GUI-driven.  
  
My software of choice is [Ultimaker Cura][cura].  This software is designed by Ultimaker, who also make their own line of 3D Printers.  Fortunately their software slicer is free and open source software compatible with just about every other consumer-grade 3D printer on the market.  
  
#### Machine Settings  
  
By default Ultimaker Cura doesn't ship with an Ender3 V2 profile...mainly because the included Ender3 profile has almost everything we need.  Let's get started with configuring the software:  
  
1. Open Cura
1. Open Preferences > Configure Cura...
1. Open Printers
1. Choose "+ Add"
1. Choose "Add a non-networked printer"
1. Expand Creality3D, Select Creality Ender-3, and change the name to Creality Ender-3 V2
1. Match the "Machine Settings" to the screenshot below, then click CLOSE to save the changes:

<div class="row justify-content-center mb-3">
  <a href="{{ page.image_path }}/machine_settings.png" alt="a screenshot of the various machine settings needed to configure an Ender3 V2 inside Ultimaker Cura"><img src="{{ page.image_path }}/machine_settings.png" width="600"></a>
</div>
  
#### Default Print Settings
  
Once the printer is configured we'll want to dial in the print settings.  The defaults below assume you are using PLA filament:  
  
<div class="row mb-3 p-3" style="background-color: #efefef">
  <p>Note: These are the settings that work best for me, so they may or may not need tweaking if you decide to use them too.  Prints can be affected by anything from fluctuations in ambient temperature, drafts, and humidity levels.  Generally speaking, though, I've found these tweaks tend to produce more reliable prints than the stock settings.</p>
</div>

1. Start by selecting the "Standard Quality - 0.2mm" printing profile in the Cura main window
1. Printing Temperature: 195.0c
1. Printing Temperature Initial Layer: 200.0c
1. Build Plate Temperature: 60c
1. Print Speed: 40-45mm/s
1. Build Plate Adhesion Type:
  - Raft for small-to-medium prints
  - Brim for large prints
1. Open the Profiles dropdown again and choose "Create profile from current settings/overrides...", enter a name for the profile, and save it  
  
From now on, make sure this profile is selected whenever you import a model.  You can tweak it from there, depending on the recommendations of the model maker or your own experiences!  The two settings that make the biggest impact are:  
  
**Print Speed:** Slowing things down *can* introduce stringing, but 40mm/s helps my filament cool and stick in place without getting tugged along by the moving print head.  
  
**Build Plate Adhesion Type:** Rafts and brims are great for getting the stage-fright out of your 3D printer before it moves on to the main model.  Rafts are a great way to ensure tall and thin prints stay anchored to the build plate instead of toppling over mid-session.  Brims are great to clear the nozzle of any gunk before it starts laying the foundation of a big print.  
  
#### Slicing a Model  
  
Slicing a model is the easy part once the machine & software are configured:  
  
1. Plug in the SD reader (with SD card inserted) into your computer
1. Open a .stl model file in Cura
1. Use the transform and rotate tools to put the model into a good position
  - *Positioning models can be a science itself.  I tend to try and avoid tall prints and will often rotate models to lay flat.  Increasing the surface area contact with the build plate helps secure it in place, and stout models have less room to fall over mid-print.  I also avoid printing models directly in the center of the bed, since mine bows upward.  If your bed has similar defects, try to find the spot that works best for you.*
1. Click the Slice button and then "Preview" to see a representation of the paths your printer will follow to make the print
1. Areas like overhangs may require support structures.  These are usually highlighted in red in Cura's preview mode, and they are usually suggested by the model-maker.  You can turn these on with the "Generate Supports" setting in the profile menu.
  - *If a print requires supports, try reducing the "Support Density" setting to somewhere between 15-18.  The default value produces strong supports that are often hard to remove from the model without damaging it*
1. Once the model is sliced, click the save dropdown.  Cura should make your SD Card the default save spot but if not you can select it from here
1. Eject the SD card and pop it back into your 3D printer
  
### Printing a Model  
  
Now for the moment of truth!  Let's see if all our prep work paid off.  Turn on the printer and make sure you pre-heat it.  While that's happening, also run the "auto-home" option.  Once everything's pre-heated use the printer's interface to find the model you saved and print it!  
  
I typically watch the first 3 or 4 layers of any print job.  If the initial few layers go down without incident you are on your way to a likely-successful print.  I usually cancel a print if I see these issues during the first layer laydown:  
  
**Bad Bed Adhesion:**  
Bed adhesion is a finicky thing.  If there is a little bit of lift as the nozzle travels around the first layer then that might be OK.  However, if things are clearly not sticking to the bed and/or moving position as the nozzle travels around I'll cancel the print and check my calibrations.  If the first layer doesn't stick like glue then the entire rest of the print will be suspect.  
  
**Oozy Prints:**  
If the filament is coming out oozy or misshapen instead of clean lines I will cancel those prints.  Usually this means the printing temperature is far too high.  
  
**No (Or Little) Visible Filament**  
If there is no visible filament coming from the hot end (or if the filament is there but extremely thin/compressed against the bed) I will cancel the print.  Usually this means the bed leveling went bad and the nozzle is close-to or actually making contact with the bed.  In rarer cases it may also mean the gap between the tubing and hot end is clogged.
  
**Filament Curling up Into Hot End**  
This can happen if the nozzle is crooked in its socket, or if it's just plain dirty.  Hot filament is sticky, so crud around the nozzle can prevent it from extruding vertically.  I'll usually stop the print and triple check the nozzle's hygeine.  One exception: filament may tend to curl when the 3D printer does its initial spray test -- as long as this clears on its own before moving on to the brim/raft/print stage I'll let it go.  
  
With any luck you will produce a perfect first print without any spaghettification!  If things go badly, don't get frustrated.  Check your calibrations again and give things another shot.  Remember, not all models are made equal, so even if your calibrations are pitch perfect you could still suffer from a bad print if the model itself is not designed well for 3D printing.  Like woodworking or metallurgy, successful 3D printing is much more of an art than a science.  If you feel the need to experiment with print settings, change one at a time and in very small increments (e.g. don't change temperatures more than 5c between tests).  Slow and steady will help you dial in the perfect settings to make your machine happy.  
  
### Clean-Up and Maintenance  
  
Like any other maker-activity, clean-up is just as important as the prep-work.  I recommend the following routines to reduce frustration between prints:  
  
#### After Every Print  
  
1. Clear any debris from the bed, and wipe it down with a soft cloth
1. Examine the extruder nozzle for any signs of filament leakage.  Clean up any you might see with something heat-insulated (I use the tweezers mentioned above -- they are great for getting into fine nooks and clearing them out)
  
#### After Every Third or Fourth Print  
  
1. Clean the bed with Isopropyl Alcohol
1. Auto-Home the nozzle and visually inspect the bed leveling
  
#### Once In Every Great While
  
1. Remove the extruder housing and the rubber sock that shrouds the nozzle & heater block.  Look for any signs of leakage and clean it up
1. Replace the nozzle a couple times a year.  This largely depends on how often you are printing and which materials you're using.  Regardless, brass nozzles will degrade over time.  If you suddenly have unexplainably poor quality prints, it could be that it's time for the nozzle to go  
  
#### Don't Be Afraid of Repairs  
  
Like any other piece of machinery, parts of your 3D printer will wear down over time.  Luckily, most of the most critical components (nozzle, bowden tubing, heat sink, heater block, and filament) are relatively inexpensive AND easy to replace.  Sometimes plopping down some cash is way more effective than adjusting your calibrations to account for burned out equipment.  
  
### Taking Things to the Next Level & Closing Thoughts  
  
<div class="row justify-content-center mb-3">
  <a href="{{ page.image_path }}/octoprint.jpg" alt="a picture of my pi zero 2 w and its IR camera taped & zip-tied to the gantry of the Ender3"><img src="{{ page.image_path }}/octoprint.jpg"></a>
</div>
<div class="row justify-content-center mb-3">
<small><i>A Rasperry Pi Zero 2 W and its IR Camera expertly mounted with a strip of painter's tape and zip ties 😎️</i></small>
</div>
At time of writing the only _real_ modification I've made to my 3D printer is the addition of a [Raspberry Pi Zero 2 W][pizero] running an [IR camera][ir-camera] and [OctoPrint][octoprint].  This setup gives me remote control over my Ender3 V2 and is a big quality-of-life upgrade rather than something that enhances print quality (though, it does expose some settings which make printing a little easier).  I will probably reserve a separate post to go into the details of this addition because there's tons of content to cover.  Suffice to say, I would -almost- consider OctoPrint _required_ software for anyone doing regular 3D printing at home.  It is delightful to use and seems to have every single feature my brain could come up with.  I love software that is so clearly designed by and for its own users.
  
In any case, I hope this guide is helpful, and good luck with your future prints!  
  
[zcorp]:https://www.3dsourced.com/guides/history-of-3d-printing/
[creality-ender]:https://www.creality.com/goods-detail/ender-3-v2-3d-printer
[tweezerman]:https://www.tweezerman.com/ingrown-hair-splintertweeze-classic-stainless-steel.html
[wire-cutters]:https://www.amazon.com/gp/product/B07GR7QF63
[pliers]:https://smile.amazon.com/Warner-Long-Nose-Pliers-10838/dp/B00NOP265A
[thingiverse]:https://www.thingiverse.com/
[trex]:https://www.thingiverse.com/thing:913069
[drawers]:https://www.thingiverse.com/thing:5210727
[pi-case]:https://www.thingiverse.com/thing:4667603
[formula1]:https://www.thingiverse.com/thing:5026814
[cura]:https://ultimaker.com/software/ultimaker-cura
[pizero]:https://www.raspberrypi.com/products/raspberry-pi-zero-2-w/
[ir-camera]:https://smile.amazon.com/MakerFocus-Wide-Angle-Automatically-Day-Vision-Night-Vision/dp/B07DPNDP6R
[octoprint]:https://octoprint.org/
