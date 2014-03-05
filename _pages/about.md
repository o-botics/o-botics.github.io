---
layout: page
permalink: /about/
title: About O'Botics
tags: [robotics, open]
modified: 2014-02-16
---

O'Botics, named for **o**pen ro**botics**, is a site created for anybody interested in robotics and that wishes to collaborate on robot designs. The goal is to develope open robots that are cheap, reliable, accessible, and awesome!

O'Botics was created by [Rowland O'Flaherty](http://rowlandoflaherty.com) in early 2014 as result of [Coursera MOOC "Control of Mobile Robots"](https://www.coursera.org/course/conrob). The course, taught by Georgia Tech Professor [Magnus Egerstedt](http://users.ece.gatech.edu/~magnus/),  guides students on how to control mobile robots (i.e. enable robots to move in a desirable way). To connect the theory with application the course also includes a software simulation and hardware component. These components allow the students to use the theory learned in lectures in simulation with the Matlab simulator [Sim.I.am](http://jdelacroix.github.io/simiam/) (written by [JP de la Croix](http://jpdelacroix.com/)) and in the real world with a robot known as the [QuickBot]({{ site.url }}/robots/quickbot/) (designed by [Rowland O'Flaherty](http://rowlandoflaherty.com)).

The 7-week course was a great success. More than 32,000 students registered and about 10,000 actively participated in at least one component of the course each week.  One of the the most exciting aspects of the course were the discussions that took place on the course website forum. Beyond connecting people from all over the globe to ask and answer one another's questions, the form served as a unique incubator for new ideas on how to improve the software, hardware, and everything in between. This website culminated from an effort to continue the dialogue and open exchange of ideas.

The site is completely open. All material is maintained through a GitHub organization called "[o-botics](https://github.com/o-botics)". Anyone can access, use, and contribute to the material in this organization. Even this very site is hosted on GitHub with a Git [repo](https://github.com/o-botics/o-botics.github.io) using [Jekyll](http://jekyllrb.com/) to generate statics webpages.

Discussions can take place in the comments area of each page using the blog hosting service [Disqus](http://disqus.com/) or in the issues and wiki area of each repository in the GitHub organization.

Enjoy!

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
