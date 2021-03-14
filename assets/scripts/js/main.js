---
---

let decodedEmail = atob("{{ site.email }}");
let protectedEmail = document.querySelectorAll('.mailto-me');
    protectedEmail.forEach(function (item) {
      item.href = `mailto:${decodedEmail}`;
});
