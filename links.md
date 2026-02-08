---
title: Linklog
layout: page
permalink: /links/
---

{% for link in site.links %}
- **[{{ link.title }}]({{ link.external_url }})**  
  <small>{{ link.date | date: "%d/%m/%Y" }}{% if link.source %} · {{ link.source }}{% endif %}</small>  
  {{ link.excerpt }}
{% endfor %}
