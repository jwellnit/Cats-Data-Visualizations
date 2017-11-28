// var width = 3000,
//     height = 3000;
//
// var div = d3.select("body").append("div")
//     .attr("class", "tooltip")
//     .style("opacity", 0);
//
// var svg = d3.select("#graph").append("svg")
//     .attr("width", width)
//     .attr("height", height)
//     .call(d3.zoom()
//             .scaleExtent([1, 40])
//             .translateExtent([[-100, -100], [width + 90, height + 100]])
//             .on("zoom", function () {
//               svg.attr("transform", d3.event.transform);
//             }))
//     .append("g");
//
// var projection = d3.geoMercator()
// 	.scale(6500)
// 	.translate([width/2+7700, height/2+3800]);
//
// var path = d3.geoPath()
// 	.projection(projection);
//
// d3.json("pa.json", function(error,pa){
//     if (error) return console.error(error);
//
//     svg.selectAll(".padistrict")
//         .data(topojson.feature(pa, pa.objects.padistricts).features)
//         .enter().append("path")
//         .attr("class", function(d) {return "padistrict " + "id"+d.id; })
//               .attr("d", path) //as "d" attribute, we set the path of the feature
//               .on("mouseover", function(d) { //http://bl.ocks.org/d3noob/a22c42db65eb00d4e369
//                 div.transition()
//                     .duration(200)
//                     .style("opacity", .9);
//                     var currentSchool =d.properties.name;
//                     var currentAUN =d.properties.aun;
//                     console.log(currentSchool +", " +currentAUN);
//                     // "<% @districts.each do |c|%>"
//                     // <% if ((c == currentAUN)) %>
//                     //   var ftRate = <%= @fullTime[c]%>
//                     //   <%end%> <%end%>
//            div.html(d.properties.name + "<br/>" + "AUN: " + d.properties.aun)
//                .style("left", (d3.event.pageX) + "px")
//                .style("top", (d3.event.pageY - 28) + "px");
//        })
//        .on("mouseout", function(d) {
//            div.transition()
//                .duration(500)
//                .style("opacity", 0);
//        })
// });
//
// var defs =svg.append("defs");
// var linearGradient =defs.append("linearGradient")
//                        .attr("id", "linear-gradient");
// linearGradient.attr("x1", "0%").attr("y1", "0%")
//               .attr("x2", "100%").attr("y2", "0%");
// linearGradient.append("stop")
//               .attr("offset", "0%")
//                .attr("stop-color", "#e6fff2");
//
// linearGradient.append("stop")
//               .attr("offset", "100%")
//               .attr("stop-color", "#006633");
//
// svg.append("rect")
//   .attr("class", "legendRect")
//   .attr("x", 230).attr("y", 450)
//   .attr("width", 300)
//   .attr("height", 20)
//   .style("fill", "url(#linear-gradient)");
//
// svg.append("text")
//     .attr("class", "legendTitle")
//     .attr("x", 250).attr("y", 435)
//     .text("Full Time Teacher Percentage");
//
// var domain =[0, 20, 40, 60, 80, 100];
// var label =["0", "20", "40", "60", "80", "100"];
//
// var legend = svg.selectAll("g.legend")
// .data(domain)
// .enter().append("g")
// .attr("class", "legend");
//
// legend.append("text")
//               .attr("x", function(d, i){ return (230 +i*55);})
//               .attr("y", 490)
//               .text(function(d, i){return label[i]; });
