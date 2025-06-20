
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/services.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});


  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    //data
    int index;
    List<String> days = [];
    
    days.insert(0, "Monday");
    days.insert(1, "Tuesday");
    days.insert(2, "Wednesday");
    days.insert(3, "Thursday");
    days.insert(4, "Friday");
    days.insert(5, "Saturday");
    days.insert(6, "Sunday");

    List<Map<String,dynamic>> barGroupData = [{"x" : 0, "y" : 10.0}, {"x" : 5, "y" : 20.0}, {"x" : 10, "y" : 5.0}, {"x" : 15, "y" : 20.0}, {"x" : 20, "y" : 10.0}];
    List<Map<String,dynamic>> listViewData = [{"x" : 0, "y" : 5.0}, {"x" : 10, "y" : 10.0}, {"x" : 15, "y" : 5.0}, {"x" : 20, "y" : 20.0}, {"x" : 30, "y" : 25.0}, {"x" : 40, "y" : 5.0}];
 
    return Scaffold(

      body: SingleChildScrollView(
      //Have a column with a row and another row, and a bar graph and then a list tile listview...

      child: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: Container(
                width: double.infinity,
            
                decoration: BoxDecoration(
            
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
            
              child: Center(child: Text("Analytics")),
              ),
          ),
  

          //row contains from a listview & bargraph
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0, bottom: 30.0),

            child: Row(
              children: [
            
            
                Expanded(
            
                  child: ListView(
                    shrinkWrap: true,
                    children: [
            
                        Text("My Spending"),
            
                        Text("\$7,221.18"),
                        

                        TextButton.icon(
                          onPressed: (){},
                          
                          style: TextButton.styleFrom(minimumSize: Size(10, 10), maximumSize: Size(10,31),),
                          icon: Icon(Icons.arrow_upward),
                          label: Text("4.9%", textAlign: TextAlign.left,),
                        ),
          
                        Text("From Last Week"),
                      ],
                    ),
            
            
                  ),
                  //Bargraph on the same row
                      //Text("Here Lies The Bar Graph!"),
                      Expanded(
                        
                        child: Container(
                          height: 120,
                          
                          child: AspectRatio(
                            aspectRatio: 10,
                            
                            child: BarChart(
            
                              BarChartData(
                                barGroups:
                                  
                                  //map
                                  barGroupData.map((e) {
                                    return
                                     BarChartGroupData(
                                          x: e["x"],
                                          barRods: [
                                          BarChartRodData(toY: e["y"]),
                                    ],
                                  );
                                  },).toList()

            
                                 ,
            
            
                          
                  
                                titlesData:FlTitlesData(
                                  
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),

                                  rightTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),

                                  topTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),

                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),

                                ),

                              ),
                            ),
                          
                          ),
                        ),
                      ),
            
                  ],
                ),
          ),

              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 20.0),
                child: Row(
                  
                  children: [
                
                      Expanded(child: ListView(
                        shrinkWrap: true,
                
                        children: [
                          
                          Text("Expense"),
                          Text("-\$2,082.12"),
                
                        ],
                      ),
                    ),
                
                    TextButton.icon(onPressed: (){},
                      icon: Icon(Icons.arrow_drop_down),
                      label: Text("July 2024"),
                      
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white10),
                      ),
                
                    ),
                
                
                  ],
                ),
              ),

          ///ADD more column items
          //Text("A humongous bar graph"),
          
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),

            child: AspectRatio(
              aspectRatio: 2,
              
              // child: PieChart(
              //   PieChartData(
              //     sections: [
                    
              //       PieChartSectionData(
              //         value: 100,
              //         title: "aw",
              //         titleStyle: TextStyle(color: Colors.black, fontSize: 12),
              //         showTitle: true,
              //         radius: 100,
              //         color: Colors.blue,
              //       ),
            
            
            
              //     ],
              //   ),
              // ),

              child: LineChart(
                LineChartData(
                  minY: 0,
                  maxY: 60,
            
                  lineBarsData: 

                      listViewData.map((e){ 
                        
                        return LineChartBarData(
                            spots: [
                              FlSpot(e["x"],e["y"]),
                            ],

                            color: Colors.black,
                          );
                        }
                      ).toList(),
                      

            
                  titlesData: FlTitlesData(
            
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    
                    leftTitles: AxisTitles(
                      //axisNameWidget: Text("Some value"),
                      sideTitles: SideTitles(showTitles: false),
                    ),
            
                    bottomTitles: AxisTitles(
                      //axisNameWidget: Text("Second Value"),
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
            
                        getTitlesWidget: (value,meta)
                        {
                          
                          index = value.toInt();

                          if (index< 0 || index >= days.length){
                            return const Text('');
                          }

                          return Padding(
                            padding: EdgeInsets.only(left: index.toDouble()*140),
                            child: Text(days[index]),
                          );

                        }
            
                      ),
            
                    )
            
                  )
            
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
            
            child: Container(
              height: 200,
            
              child: ListView(
                shrinkWrap: true,
                children: 
                [
                
                  ListTile(
                    leading: Icon(Icons.circle),
                    title: Text("Healthcare"),
                    dense: true,
                    trailing: Text("\$450.00"),
            
                  ),
              
                  ListTile(
                    leading: Icon(Icons.circle),
                    title: Text("Healthcare"),
                    dense: true,
                    trailing: Text("\$450.00"),
            
                  ),
            
                  ListTile(
                    leading: Icon(Icons.circle),
                    title: Text("Food"),
                    dense: true,
                    trailing: Text("\$275.00"),
                  ),
            
                  ListTile(
                    leading: Icon(Icons.circle),
                    title: Text("Supplies"),
                    dense: true,
                    trailing: Text("\$150.00"),
                  ),
            
                ],
            
              ),
            ),
          )


          ],
        ),
      ),
    );
  }
}