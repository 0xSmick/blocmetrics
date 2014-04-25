console.log("This runs every refresh")
console.log("you might want to make a pageload event..")
// myAnalyticsScript.send("test, data, data, this isn't the right format...")
console.log("that fake event will load on every refresh")


onPageLoad: console.log(document.URL)


var _bm_event = {
  type: "Pageview",
  web_property: 
  url:  document.URL,
}

var _bm_pageview = new function(type, web_property, url){
  var _bm_values = {
    type: type,
    web_property: web_property, 
    url: URL
  } 
  var _bm_event = new XMLHttpRequest();
  _bm_event.open("POST", "http://localhost:3000/events.json", true);
  _bm_event.setRequestHeader('Content-Type', 'application/json');
  _bm_event.onreadystatechange = function() {};
  _bm_event.send(JSON.stringify(_bm_values));
}


