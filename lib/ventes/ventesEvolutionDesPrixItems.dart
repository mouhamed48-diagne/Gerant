import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:fl_chart/fl_chart.dart';

class VentesEvolutionsDesPrixItem extends StatefulWidget {
  const VentesEvolutionsDesPrixItem({super.key});

  @override
  State<VentesEvolutionsDesPrixItem> createState() => _VentesEvolutionsDesPrixItemState();
}

class _VentesEvolutionsDesPrixItemState extends State<VentesEvolutionsDesPrixItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: teraGrey,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset("assets/les-carottes.png", scale: 13,)),
                  SizedBox(width: 10,),
                  Text("Carotte", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(width: 10,),
                  Image.asset("assets/icons/icons8-flèche-gauche-90 - Copy.png", scale: 4,)
                ],
              ),
              Image.asset("assets/icons/icons8-chercher-90.png", scale: 3,),
            ],
          ),
          SizedBox(height: 15,),
           Container(
            padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                color: teraGrey,
                borderRadius: BorderRadius.circular(5),
              ),

            ),
      ],
    );
  }
}

class LineChartWidget extends StatelessWidget {
  final List<PricePoint> points;

  const LineChartWidget(this.points, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
        LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
                isCurved: false,
                dotData: FlDotData(
                  show: false,
                ),
                color: Colors.red
              ),
            ],
            borderData: FlBorderData(
                border: const Border(bottom: BorderSide(), left: BorderSide())),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(sideTitles: _bottomTitles),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
          ),
      ),
    );
  }

  SideTitles get _bottomTitles => SideTitles(
    showTitles: true,
    getTitlesWidget: (value, meta) {
      String text = '';
      switch (value.toInt()) {
        case 1:
          text = 'Jan';
          break;
        case 3:
          text = 'Mar';
          break;
        case 5:
          text = 'Mai';
          break;
        case 7:
          text = 'Jul';
          break;
        case 9:
          text = 'Sep';
          break;
        case 11:
          text = 'Nov';
          break;
      }

      return Text(text);
    },
  );
}

class PricePoint {
  final double x;
  final double y;

  PricePoint({required this.x, required this.y});
}

// List <PricePoint> get pricePoints {
//   final data = <double> [2,4,6,11,3,6,4];
//   return data
//       .mapIndexed(
//           ((index, element) => PricePoint(x: index.toDouble(), y: element)))
//       .toList();
// }