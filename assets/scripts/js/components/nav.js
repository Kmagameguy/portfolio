const hamburger  = document.getElementById("hamburger");
const navMenu    = document.getElementById("nav-menu");
const workItem   = document.querySelector(".work-item");
const workToggle = document.querySelector(".work-toggle");
const workMenu   = document.getElementById("work-menu");

function setMenuOpen(open) {
  navMenu.classList.toggle("mobile-show", open);
  hamburger.setAttribute("aria-expanded", open ? "true" : "false");
}

function menuLinks() {
  return Array.from(navMenu.children)
    .map((li) => li.querySelector(":scope > a"))
    .filter(Boolean);
}

function setWorkOpen(open) {
  workItem.classList.toggle("open", open);
  workToggle.setAttribute("aria-expanded", open ? "true" : "false");
}

function workLinks() {
  return Array.from(workMenu.querySelectorAll("a"));
}

document.addEventListener("keydown", (event) => {
  if (event.key === "Escape" && navMenu.classList.contains("mobile-show")) {
    setMenuOpen(false);
    hamburger.focus();
  } else if (event.key == "Escape" && workItem.classList.contains("open")) {
    setWorkOpen(false);
    workToggle.focus();
  }
});

hamburger.addEventListener("click", () => {
  setMenuOpen(!navMenu.classList.contains("mobile-show"));
});

hamburger.addEventListener("keydown", (event) => {
  if (event.key !== "ArrowDown" && event.key !== "ArrowUp") {
    return;
  }
  event.preventDefault();
  setMenuOpen(true);
  const links = menuLinks();
  links[event.key === "ArrowDown" ? 0 : links.length - 1].focus();
});

navMenu.addEventListener("click", (event) => {
  if (event.target.closest("a")) {
    setMenuOpen(false);
  }
});

navMenu.addEventListener("keydown", (event) => {
  if (event.key !== "ArrowDown" && event.key !== "ArrowUp") {
    return;
  }
  if (workItem.contains(event.target)) {
    return;
  }
  event.preventDefault();
  const links = menuLinks();
  const index = links.indexOf(document.activeElement);
  const delta = event.key === "ArrowDown" ? 1 : -1;
  links[(index + delta + links.length) % links.length].focus();
});

workToggle.addEventListener("click", () => {
  setWorkOpen(!workItem.classList.contains("open"));
});

workToggle.addEventListener("keydown", (event) => {
  if (event.key !== "ArrowDown" && event.key !== "ArrowUp") {
    return;
  }
  event.preventDefault();
  setWorkOpen(true);
  const links = workLinks();
  links[event.key === "ArrowDown" ? 0 : links.length - 1].focus();
});

workMenu.addEventListener("keydown", (event) => {
  if (event.key !== "ArrowDown" && event.key !== "ArrowUp") {
    return;
  }
  event.preventDefault();
  const links = workLinks();
  const index = links.indexOf(document.activeElement);
  const delta = event.key === "ArrowDown" ? 1 : -1;
  links[(index + delta + links.length) % links.length].focus();
});

workItem.addEventListener("focusout", (event) => {
  if (!workItem.contains(event.relatedTarget)) {
    setWorkOpen(false);
  }
});
