---
layout: post
title: Link log
permalink: /links/
main_nav: true
nav_order: 2
cover: /assets/img/PolygonLuminary3.svg
---

{% for link in site.links %}
- **[{{ link.title }}]({{ link.external_url }})**  
  <small>{{ link.date | date: "%d/%m/%Y" }}{% if link.source %} · {{ link.source }}{% endif %}</small>  
  {{ link.excerpt }}
{% endfor %}
