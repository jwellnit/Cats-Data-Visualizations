var width = 3000,
height = 3000;


var svg = d3.select("#graph").append("svg")
    .attr("width", width)
    .attr("height", height);

    var projection = d3.geoMercator()
	.scale(6500)
	.translate([width/2+7700, height/2+3800]);

    var path = d3.geoPath()
	.projection(projection);

d3.json("pa.json", function(error,pa) {
    if (error) return console.error(error);

    svg.selectAll(".padistrict")
        .data(topojson.feature(pa, pa.objects.padistricts).features)
        .enter().append("path")
        .attr("class", function(d) {return "padistrict " + "id"+d.id; })
              .attr("d", path) //as "d" attribute, we set the path of the feature
              // .on('mousemove', showTooltip);
              // .on('mouseover', function(d,i){
              //     var currentDistrict =this;
              //     console.log(this);
              //     console.log(this.attr("id"));
              // });

            // .on('mouseover', function(d,i){
            //     var currentDistrict =this;
            //     d3.select(this).style('fill-opacity', 1);
            // })
            // .on('mouseout', function(d,i){
            //   d3.selectAll('path')
            //     .style({
            //       'fill-opacity': .7
            //     })
            // })
});

// var dataById = d3.geoMercator();
//
// var quantize = d3.scale.quantize()
//  .domain([0, 100])
//  .range(d3.range(9).map(function(i) { return 'q' + i + '-9'; }));
//
// function doZoom() {
// mapFeatures.attr("transform",
//  "translate(" + d3.event.translate + ") scale(" + d3.event.scale + ")")
//  // Keep the stroke width proportional. The initial stroke width
//  // (0.5) must match the one set in the CSS.
//  .style("stroke-width", 0.5 / d3.event.scale + "px");
//  }
//
//  function getIdOfFeature(f) {
//   return f.properties.GMDNR;
//   }
//
//   var tooltip = d3.select("#map")
//    .append("div")
//    .attr("class", "tooltip hidden");
//
//  function showTooltip(f) {
//     // Get the ID of the feature.
//     var id = getIdOfFeature(f);
//     // Use the ID to get the data entry.
//     var d = dataById[id];
//     // Show the tooltip (unhide it) and set the name of the data entry.
//     tooltip.classed('hidden', false)
//     .html(d.name);
//     }
// ////////////////////////////////////////////////////////////////////////
// var width = 3000,
// height = 3000;
//
// var svg = d3.select("#graph").append("svg")
//     .attr("width", width)
//     .attr("height", height);
//
//     var projection = d3.geoMercator()
// 	.scale(6500)
// 	.translate([width/2+7700, height/2+3800]);
//
//     var path = d3.geoPath()
// 	.projection(projection);
//
// d3.json("pa.json", function(error,pa) {
//     if (error) return console.error(error);
//
//     svg.selectAll(".padistrict")
//         .data(topojson.feature(pa, pa.objects.padistricts).features)
//         .enter().append("path")
//         .attr("class", function(d) {return "padistrict " + "id"+d.id; })
//               .attr("d", path);
// });

///////////////////////////////////////////////////////////////////////////
// var subunits =topojson.feature(pa, pa.objects.subunits);
// var projection = d3.geo.mercator()
//     .scale(500)
//     .translate([width / 2, height / 2]);
// var path = d3.geo.path()
//     .projection(projection);
//
// svg.append("path")
//     .datum(subunits)
//     .attr("d", path);
//
// var projection = d3.geo.albers()
//     .center([0, 55.4])
//     .rotate([4.4, 0])
//     .parallels([50, 60])
//     .scale(6000)
//     .translate([width / 2, height / 2]);
//
// svg.selectAll(".subunit")
//       .data(topojson.feature(uk, pa.objects.subunits).features)
//     .enter().append("path")
//       .attr("class", function(d) { return "subunit " + d.id; })
//       .attr("d", path);
