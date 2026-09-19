(function () {
  var host = location.hostname;
  var path = location.pathname || "";
  var skip =
    host === "localhost" ||
    host === "127.0.0.1" ||
    host === "[::1]" ||
    host === "::1" ||
    location.protocol === "file:" ||
    path.indexOf("/_ej-previews") === 0;

  if (skip) return;

  window.dataLayer = window.dataLayer || [];
  window.dataLayer.push({ "gtm.start": new Date().getTime(), event: "gtm.js" });

  var gtm = document.createElement("script");
  gtm.async = true;
  gtm.src = "https://www.googletagmanager.com/gtm.js?id=GTM-5HX7TCR7";
  document.head.appendChild(gtm);

  var ga = document.createElement("script");
  ga.async = true;
  ga.src = "https://www.googletagmanager.com/gtag/js?id=G-2LE6396K28";
  document.head.appendChild(ga);

  window.gtag = function () {
    window.dataLayer.push(arguments);
  };
  window.gtag("js", new Date());
  window.gtag("config", "G-2LE6396K28");
})();
