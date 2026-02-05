---
layout: home
permalink: /code/
---

<div class="row justify-content-center align-items-center mt-2 px-4 py-2">
  <div class="page-subtitle">
    <p>
      All of my projects can be found at
      <a href="https://github.com/kmagameguy">my GitHub profile.</a><br />
      Below are some demonstrations of those projects.
    </p>
  </div>
</div>

{% for project in site.data.projects %}
  {% include project_card.html project=project %}
{% endfor %}
