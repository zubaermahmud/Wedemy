import 'package:flutter/material.dart';

void main() {
  runApp(CGPACalculator());
}

class CGPACalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back img 01.png"), // Adjust the image path as per your project
              fit: BoxFit.cover,
            ),
          ),
          child: SemesterSelectionPage(),
        ),
      ),
    );
  }
}



class SemesterSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('WeDemy'),

    backgroundColor: Colors.blue[800],
    foregroundColor: Colors.white,
    centerTitle: true,
    ),
      body: Container(
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {0;
          return ListTile(
            title: Text('Semester ${index + 1}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreditHoursPage(semester: index + 1),
                ),
              );
            },
          );
          },
        ),
      ),
    );
  }
}

class CreditHoursPage extends StatefulWidget {
  final int semester;

  CreditHoursPage({required this.semester});

  @override
  _CreditHoursPageState createState() => _CreditHoursPageState();
}

class _CreditHoursPageState extends State<CreditHoursPage> {
  TextEditingController creditController = TextEditingController();
  TextEditingController cgpaController = TextEditingController();

  List<double> creditHoursList = [];
  List<double> cgpaList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Hours - Semester ${widget.semester}'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: creditController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Credit Hours',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: cgpaController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Enter CGPA (e.g., 3.58)',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              double creditHours = double.tryParse(creditController.text) ?? 0;
              double cgpa = double.tryParse(cgpaController.text) ?? 0;

              setState(() {
                creditHoursList.add(creditHours);
                cgpaList.add(cgpa);
              });

              creditController.clear();
              cgpaController.clear();
            },
            child: Text('Add Course'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    semester: widget.semester,
                    creditHoursList: creditHoursList,
                    cgpaList: cgpaList,
                  ),
                ),
              );
            },
            child: Text('Calculate CGPA'),
          ),
        ],
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final int semester;
  final List<double> creditHoursList;
  final List<double> cgpaList;

  ResultPage({
    required this.semester,
    required this.creditHoursList,
    required this.cgpaList,
  });

  @override
  Widget build(BuildContext context) {
    double calculatedCGPA = calculateCGPA(creditHoursList, cgpaList);

    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page - Semester $semester'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Calculated CGPA: ${calculatedCGPA.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 26), // Set the font size as per your preference
            ),
            // You can display additional information or actions here
          ],
        ),
      ),
    );
  }

  double calculateCGPA(List<double> creditHours, List<double> cgpaList) {
    double totalQualityPoints = 0;
    double totalCreditHours = 0;

    for (int i = 0; i < creditHours.length; i++) {
      double credit = creditHours[i];
      double cgpa = cgpaList[i];

      totalQualityPoints += credit * cgpa;
      totalCreditHours += credit;
    }

    return totalQualityPoints /   totalCreditHours;
  }
}
