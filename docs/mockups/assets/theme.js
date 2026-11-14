// Loaded synchronously in <head> so the chosen theme applies before first paint.
// Order: ?theme=light|dark, then the remembered choice, then the system setting.
(function () {
  var root = document.documentElement;
  var asked = new URLSearchParams(location.search).get("theme");
  try { asked = asked || localStorage.getItem("theme"); } catch (e) {}
  if (asked === "light" || asked === "dark") root.dataset.theme = asked;

  function isDark() {
    return root.dataset.theme ? root.dataset.theme === "dark" : matchMedia("(prefers-color-scheme: dark)").matches;
  }
  document.addEventListener("DOMContentLoaded", function () {
    var button = document.getElementById("theme");
    if (!button) return;
    button.setAttribute("aria-pressed", String(isDark()));
    button.addEventListener("click", function () {
      root.dataset.theme = isDark() ? "light" : "dark";
      try { localStorage.setItem("theme", root.dataset.theme); } catch (e) {}
      button.setAttribute("aria-pressed", String(isDark()));
    });
  });
})();
