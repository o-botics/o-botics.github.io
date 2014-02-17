---
layout: page
permalink: /news/
title: News
description: "A place where roboticist can collaborate on robot designs, code, electronics, and hardware."
tags: []
---

<ul class="post-list">
{% for post in site.posts %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span></a></article></li>
{% endfor %}
</ul>
