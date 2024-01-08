'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "7979b59c87f0b00ea540553dc5a6dd34",
"index.html": "0192620afa3877ec9715837181eafd1a",
"/": "0192620afa3877ec9715837181eafd1a",
"main.dart.js": "33d0d2112ec8481b7c5d6c74f291d078",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "beaf5a75045a5884f2f6690b36e3ae49",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "13374598b56ba21f8635c690a988dd88",
"assets/images/clouds.png": "2485d48b172308a17b0212284e81b075",
"assets/images/snow.png": "d2bc6458b119b5a731baf4df18ef59ea",
"assets/images/moon.png": "44d74f5c2e392104f3b9e3dbf38944bf",
"assets/images/breeze.png": "ed88a9338d8eda4380130a3ffb83912c",
"assets/images/sun.png": "16f98c708cb122c5f39b7847b3520305",
"assets/images/drizzle.png": "b9daa400d921f32a53bf92c5247dfc97",
"assets/images/rain.png": "367d2ba7bd8892681451c770b2df8ff1",
"assets/images/storm.png": "69333244136ffb79b9871442e17b00f4",
"assets/AssetManifest.json": "250e06167a3741a9e483a21b7e1e82d5",
"assets/NOTICES": "df778e7b1feb90dea5033a3f5647321f",
"assets/FontManifest.json": "e691781a8e3d90a85ad776d2abc55d05",
"assets/AssetManifest.bin.json": "02a4ce3f2fd5befd3ed3d0a89068868a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/rflutter_alert/assets/images/icon_success.png": "8bb472ce3c765f567aa3f28915c1a8f4",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_success.png": "7d6abdd1b85e78df76b2837996749a43",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_error.png": "2da9704815c606109493d8af19999a65",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_warning.png": "e4606e6910d7c48132912eb818e3a55f",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_info.png": "612ea65413e042e3df408a8548cefe71",
"assets/packages/rflutter_alert/assets/images/2.0x/close.png": "abaa692ee4fa94f76ad099a7a437bd4f",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_success.png": "1c04416085cc343b99d1544a723c7e62",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_error.png": "15ca57e31f94cadd75d8e2b2098239bd",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_warning.png": "e5f369189faa13e7586459afbe4ffab9",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_info.png": "e68e8527c1eb78949351a6582469fe55",
"assets/packages/rflutter_alert/assets/images/3.0x/close.png": "98d2de9ca72dc92b1c9a2835a7464a8c",
"assets/packages/rflutter_alert/assets/images/icon_error.png": "f2b71a724964b51ac26239413e73f787",
"assets/packages/rflutter_alert/assets/images/icon_warning.png": "ccfc1396d29de3ac730da38a8ab20098",
"assets/packages/rflutter_alert/assets/images/icon_info.png": "3f71f68cae4d420cecbf996f37b0763c",
"assets/packages/rflutter_alert/assets/images/close.png": "13c168d8841fcaba94ee91e8adc3617f",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "53e5ef7744ba3daf74c25d6f73d88353",
"assets/fonts/SpartanMB-Black.otf": "574787237607a0795b7007988bd0e906",
"assets/fonts/MaterialIcons-Regular.otf": "7a3febfc1e75445366c371c4d9f76bc3",
"assets/assets/images/img_.png": "35aa86811fb6818cf237bd7616e8d0af",
"assets/assets/images/img_group_652.svg": "87b6cf5738338cf9f9b6029fb1bfca19",
"assets/assets/images/img_map_red_600.svg": "4373035cf3e09b5c5af9ae58e9acffac",
"assets/assets/images/img_windy.svg": "927ab817954119cf415daf66426939e5",
"assets/assets/images/img_arrow_down.svg": "596f0f340078a994c8e7b7abbc8424fb",
"assets/assets/images/img_group_657.png": "5ba53b06f766b95d0ed6aa4ea118508f",
"assets/assets/images/img_sun_white_a700.svg": "807da10ee29d6b21ccaece4d6edf6d6b",
"assets/assets/images/img_group_656.png": "0b3a306c5d497837cfc1537d0a560d80",
"assets/assets/images/img_group_679.png": "3a239c207e549a816a27bd91d10e8b66",
"assets/assets/images/img_focus.svg": "db6df7295d1d8af63a431bf45bf4ece5",
"assets/assets/images/img_group_678.png": "7f7790d35e47064613ba7e0f51b78cee",
"assets/assets/images/img_group_650.png": "1dbad040170709db088a1ab0284710bb",
"assets/assets/images/img_map.svg": "664c1558b3efcc93bb6271bc61ffc11f",
"assets/assets/images/img_mapsicle_map.png": "1c944f27ecb73d771082c9a03a54cba5",
"assets/assets/images/img_arrowleft_blue_gray_700.svg": "ed33106e7ae2c5650f06eebfb3c784a3",
"assets/assets/images/img_arrowup.svg": "8d8c45f4537a0d15fed39880f7cee89c",
"assets/assets/images/img_group_676.png": "09a678bd9c550f69f59c3c521ad97486",
"assets/assets/images/img_raini.svg": "ee57d86631750675ca85f29e89314475",
"assets/assets/images/img_set.svg": "4bc6bc1e58de49d26df86fce683c80f4",
"assets/assets/images/img_vector_10.svg": "72bae052b6a747edc51dd9405959a4e4",
"assets/assets/images/img__white_a700.svg": "5e672b3dd21f9bf1fcb63c0046ea704b",
"assets/assets/images/img_arrow_left.svg": "66236a6e0bdf3623fd8f800cf65a4293",
"assets/assets/images/img_arrow_up_blue_gray_400.svg": "c4d666c045ed0ee713545082389a67c9",
"assets/assets/images/img_vector_12.png": "e6ba571eb333d3c9798b636deba97167",
"assets/assets/images/image_not_found.png": "a88029aaad6e6ea7596096c7c451840b",
"assets/assets/images/img_vector_11.png": "c68971bb4d6742c4946b21397289fce0",
"assets/assets/images/img_windy_blue_gray_400.svg": "276b8a6108f2445fc3577fac5da9361b",
"assets/assets/images/img_mic.svg": "110d526af52e5bda4e235517cd4eb287",
"assets/assets/images/img_hum.svg": "cd1876b9f49e2d9094b390f0692936e9",
"assets/assets/images/img_sun.svg": "d5b09b08a9bc2216820907cdeb184dd2",
"assets/assets/images/img_calendar.svg": "88334d8f183d07c8befc88b092d9f666",
"assets/assets/images/img_clock_line.svg": "396cbdebd2eaebba72c0c6ee1beeab55",
"assets/assets/fonts/OverpassBold.ttf": "b0898efd5a06e39da269d0ad50aea8c5",
"assets/assets/fonts/OverpassSemiBold.ttf": "9541367e2edc7ae665d0bbe0326886d2",
"assets/assets/fonts/OverpassBlack.ttf": "a8bc253eb6f8e7b56d44198f3cad5eeb",
"assets/assets/fonts/OverpassRegular.ttf": "b5d14a34728f6db88302b4fa04b01ef2",
"assets/assets/fonts/RalewayLight.ttf": "a36750fa9f5530b0c2760267df04ae37",
"assets/assets/fonts/OverpassLight.ttf": "21db88b4b8108780d69ccf30da4f9f84",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
