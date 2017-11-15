var width = 3000,
    height = 3000;

    // Define the div for the tooltip.  The CSS file gives its dimensions.
var div = d3.select("body").append("div")   // <==== Adding new div to the body of the html file
    .attr("class", "tooltip")
    .style("opacity", 0);

var svg = d3.select("#graph").append("svg")
    .attr("width", width)
    .attr("height", height);

var projection = d3.geoMercator()
	.scale(6500)
	.translate([width/2+7700, height/2+3800]);

var path = d3.geoPath()
	.projection(projection);

d3.json("pa.json", function(error,pa){
    if (error) return console.error(error);

    svg.selectAll(".padistrict")
        .data(topojson.feature(pa, pa.objects.padistricts).features)
        .enter().append("path")
        .attr("class", function(d) {return "padistrict " + "id"+d.id; })
              .attr("d", path) //as "d" attribute, we set the path of the feature
              .on("mouseover", function(d) { //http://bl.ocks.org/d3noob/a22c42db65eb00d4e369
           div.transition()
               .duration(200)
               .style("opacity", .9);
           // Note:  Here you have d and d.properties.name
           //        You also have d.properties.aun (lea_id) for the
           //        school district.  These are fields in the json file.
           //        You could use d.properties.aun to look up
           //        info in some javascript array.
           div.html(d.properties.name + "<br/>" + "AUN: " + d.properties.aun)
               .style("left", (d3.event.pageX) + "px")
               .style("top", (d3.event.pageY - 28) + "px");
       })
       .on("mouseout", function(d) {
           div.transition()
               .duration(500)
               .style("opacity", 0);
       })
});
