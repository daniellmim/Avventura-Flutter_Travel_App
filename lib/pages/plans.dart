import 'package:flutter/material.dart';

class PlansPage extends StatefulWidget {
  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  List<Plan> _plans = [
    Plan(title: 'Vacation in Hawaii', date: DateTime(2023, 7, 15)),
    Plan(title: 'Business trip to Tokyo', date: DateTime(2023, 8, 5)),
    Plan(title: 'Road trip across USA', date: DateTime(2023, 9, 1)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: _plans.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              title: Text(_plans[index].title),
              subtitle: Text(_plans[index].date.toString()),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    _plans.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final newPlan = await showDialog<Plan>(
            context: context,
            builder: (context) {
              return PlanDialog();
            },
          );
          if (newPlan != null) {
            setState(() {
              _plans.add(newPlan);
            });
          }
        },
      ),
    );
  }
}

class Plan {
  final String title;
  final DateTime date;

  Plan({required this.title, required this.date});
}

class PlanDialog extends StatefulWidget {
  @override
  _PlanDialogState createState() => _PlanDialogState();
}

class _PlanDialogState extends State<PlanDialog> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late DateTime _date;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New Plan'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
              onSaved: (value) {
                _title = value!;
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Pick a date'),
              onPressed: () async {
                final chosenDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 365)),
                );
                if (chosenDate != null) {
                  setState(() {
                    _date = chosenDate;
                  });
                }
              },
            ),
            SizedBox(height: 16),
            Text(_date == null ? 'No date chosen' : _date.toString()),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text('Save'),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Navigator.of(context).pop(Plan(title: _title, date: _date));
            }
          },
        ),
      ],
    );
  }
}