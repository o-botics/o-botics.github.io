---
layout: page
permalink: /about/
title: About O'Botics
tags: [robotics, open]
modified: 2014-02-16
---

O'Botics, named for **o**pen ro**botics**, is a site created for anybody interested in robotics and wish to collaborate on robot designs. The goal is to development open robots that are cheap, reliable, accessible, and awesome!

O'Botics was created by [Rowland O'Flaherty](rowlandoflaherty.com) in early 2014 as result of [Coursera MOOC "Control of Mobile Robots"](https://www.coursera.org/course/conrob). The course, taught by Georgia Tech professor [Magnus Egerstedt](http://users.ece.gatech.edu/~magnus/),  teaches students at a college level how to control mobile robots (i.e. get robots to move in a desirable way). To connect the theory to practice the course also included a software simulation and hardware component. This allowed the students to develope theory learned in lectures with the Matlab simulator [Sim.I.am](http://jdelacroix.github.io/simiam/) (written by [JP de la Croix](http://jpdelacroix.com/)) and then apply that theory to a real robot known as the [QuickBot]({{ site.url }}/robots/quickbot/) (designed by [Rowland O'Flaherty](rowlandoflaherty.com)).

The 7-week course was very successful. More than 31,000 students registered with average of 10,000 actively participating in some part of the course each week. But what was really exciting were the discussion that took place on the course website forum. This forum not only had people from all over the globe asking and answering each others questions, but also was an incubator for new ideas on how to improve the software, hardware, and everything in-between. Not wanting this creative environment to end with the end of the course is reason this site was born.

The site is completely open. All material is maintained through a GitHub organization called "[o-botics](https://github.com/o-botics)". Anybody can access, use, and contribute to the material in this organization. Even this very site is hosted on GitHub with a Git [repo](https://github.com/o-botics/o-botics.github.io) using [Jekyll](http://jekyllrb.com/) to generate static webpages.

Discussion can take place in the comments area of each page using the blog hosting service [Disqus](http://disqus.com/) or in the issues and wiki area of each repository in the GitHub organization.

This is an experiment, it's exciting to see where it will go.

<div id="disqus_thread"></div>
<script type="text/javascript">
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    // var disqus_shortname = 'testing-o-botics'; // required: replace example with your forum shortname
    {% if site.url == "http://o-botics.org" %}
      var disqus_shortname = 'o-botics'; // required: replace example with your forum shortname
    {% endif %}

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
