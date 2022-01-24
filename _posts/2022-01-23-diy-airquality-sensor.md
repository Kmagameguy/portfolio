---
layout: post
title: Building an Air Quality Monitor
author: Kevin
tags: 
thumbnail: /assets/images/posts/2022-01-23-diy-airquality-sensor/thumb.jpg
---

<div class="row justify-content-center">
  <a href="{{ page.thumbnail }}"><img src="{{ page.thumbnail }}" alt="nic cage"></a>
</div>
<br />

### Intro
I was YouTube hopping recently when I clicked on an interesting-sounding video from Tom Scott titled: [This Is Your Brain on Stale Air][stale-air] (6 mins)  
  
Those familiar with Tom's channel will probably say: "No duh! Every video is interesting!", and guess what? I agree!  What struck me about this video, though, was that the symptoms Kurtis Baute described (headaches, sleepiness, poor concentration) describe me pretty well.  I had written this off as work-from-home induced distractedness...but I've been working from home for two years now so surely I've had enough time to settle in, right?  Not long ago I refreshed my sleep routine & gadgets so I know I'm sleeping a lot better but I still get the afternoon/evening brain fog.  The video got me thinking -- maybe the air is to blame!  I have all my windows sealed up because they bleed heat in the winter, meaning the only ingress/egress for fresh air is my AC system...which I usually keep off to save on the heating bill.  
  
### The Build
I tried to find a CO2 monitor on Amazon but the prices were steep...I think the cheapest I found was around $60.  Through pure luck someone sent me a link to this [blog post by Jeff Geerling][geerblog] that details a DIY solution by [AirGradient][agradient].  These features are what caught my attention:  
  
1. All-in-one monitoring of CO2, PM2.5, Temperature, and Humidity levels
1. DIY construction based on the ESP8266 board, which meant I could write my own firmware
1. Full control over the firmware meant I could probably integrate with home assistant or some other self-hosted dashboard
1. Low-ish cost -- total parts were about $55 per unit.  Hey, at least that's $245 cheaper than the [Airthings View Plus][athings], albeit without the radon sensor
1. No cloud service -- I own all the data and can do with it what I please without prying eyes getting involved
  
I added two-of-everything to my checkout.  Since the parts were going to take several weeks to arrive, and I'm not a soldering iron samurai, I wanted to have some insurance in case I broke something along the way.  A month later and the parts had finally arrived.  I won't rehash the build process here because all I had to do was follow Jeff's instructions and fork his code a little bit.  If you're interested in doing this yourself, go check out his content.  Here is a pic of the build in progress with just the WEMOS & OLED chips mounted.  I cannot overstate how wonderful that PCB was to work with:

{% include lightboxImage.html
  img_path='/assets/images/posts/2022-01-23-diy-airquality-sensor/pcb.jpg'
%}
  
To my surprise I managed to build the first unit without incident!  My only minor deviations from Jeff's guide were around the particulate sensor's installation.  I used kapton tape to secure the cabling to the board, and I used hot glue instead of tape to secure the sensor in place.  
  
After spending some (brief) time tinkering with [Prometheus][prom] and [Grafana][graf], AND spending time reading about safe / unhealthy levels of CO2 & PM2.5 on the CDC's website, I was able to put together a decent dashboard:  
  
{% include lightboxImage.html
  img_path='/assets/images/posts/2022-01-23-diy-airquality-sensor/dashboard.png'
%}
  
Again, I've stolen Jeff's format, though I built the dashboard myself instead of looking at his .json because I wanted to get familiar with grafana's tooling.  And, yes, since I had the parts available I went ahead and built a second unit to keep in the bedroom.  The Prometheus & Grafana services are running on one of the many Raspberry Pis in my Pi cluster.  From the outset it seems like the temperature and humidity sensors are working well.  Their values match the readouts from my thermostat and a separate temperature/humidity monitor that I already had in the living room.  I know the other sensors can take a few weeks to self-calibrate but you can see them at work already.  The spike in the living room "PM2.5 Over Time" chart above corresponds with the timeframe in which I was soldering the second unit together.  My guess is it picked up on the solder fumes.  How about that!  
  
Initially the CO2 levels looked marginal -- you can see the living room was around the 900ppm mark while the bedroom was in the 1100-1200ppm range.  As mentioned in the intro video, a concentration of 1000ppm can result in as much as a 15% suppression of cognitive function.  I definitely have some room for improvement!  After seeing those initial numbers I ran the AC fan most of the day 😬️
  
### What I Learned  
  
Overall this was a fun one-day build that taught me a LOT.  I got to:  
  
1. Stretch some atrophied soldering muscles
1. Stretch some atrophied arduino muscles
1. Set up Prometheus and learn how to configure it to scrape data
1. Set up Grafana and learn how to ingest the Prometheus data AND put it into charts
  
I also got to annoy my family with progress pics which is always fun.  I love the satisfaction I get from a DIY project, especially one like this.  I haven't tried to 3D print a case for my units yet so I may try that out sometime this coming week.  
  
### Closing Thoughts  
  
I can't wait to see what my data looks like in the coming weeks.  If you are curious about your indoor air quality I would highly recommend giving this project a go.  As you can see from the image up top the sensor prints out the CO2, 2.5PM, Temperature, and Humidity values to the built-in OLED screen, so you don't have to dive into Prometheus & Grafana unless you really want to.  
  
Having tools like this in the home offer a nice peace of mind -- especially if you're spending a lot more time indoors due to the ongoing SARS-CoV-2 pandemic.  
  
[stale-air]:https://youtu.be/1Nh_vxpycEA
[geerblog]:https://www.jeffgeerling.com/blog/2021/airgradient-diy-air-quality-monitor-co2-pm25
[agradient]:https://www.airgradient.com/
[athings]:https://www.airthings.com/view-plus
[prom]:https://prometheus.io/docs/introduction/overview
[graf]:https://grafana.com/
