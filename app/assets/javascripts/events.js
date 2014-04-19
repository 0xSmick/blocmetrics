console.log("This runs every refresh")
console.log("you might want to make a pageload event..")
// myAnalyticsScript.send("test, data, data, this isn't the right format...")
console.log("that fake event will load on every refresh")


onPageLoad: console.log(document.URL)