import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sortable_list_view/sortable_list_view.dart';
import 'model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sortable List View Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Sortable List View Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _sorts = [
    "Ascending by index",
    "Descending by index",
    "Ascending by name",
    "Descending by name",
    "Ascending by date",
    "Descending by date"
  ];
  int _selected = 0;
  List<CardModel> _cards = CardModel.items;
  SortableController<CardModel> _controller = SortableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: Icon(Icons.sort), onPressed: () => _showDialog())
        ],
      ),
      body: SortableListView<CardModel>(
        controller: _controller,
        compare: (CardModel t1, CardModel t2) => t1.isEquals(t2),
        initial: _cards,
        itemBuilder: (BuildContext context, int index) {
          var item = _cards[index];
          return Card(
              child: ListTile(
            leading: CircleAvatar(child: Text("${item.id}")),
            title: Text(item.name),
            subtitle:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Country: ${item.country}"),
              Align(
                child: Text(DateFormat('yyyy-MM-dd').format(item.date)),
                alignment: Alignment.centerRight,
              ),
            ]),
          ));
        },
      ),
    );
  }

  void onSortChanged(String value) {
    _selected = _sorts.indexOf(value);
    Navigator.of(context).pop();
    _controller.setItems(_cards
      ..sort((t1, t2) {
        if (_selected == 0)
          return t1.id.compareTo(t2.id);
        else if (_selected == 1)
          return t2.id.compareTo(t1.id);
        else if (_selected == 2)
          return t1.name.compareTo(t2.name);
        else if (_selected == 3)
          return t2.name.compareTo(t1.name);
        else if (_selected == 4)
          return t1.date.compareTo(t2.date);
        else if (_selected == 5) return t2.date.compareTo(t1.date);
        return 0;
      }));
  }

  _showDialog() => showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
            children: List.generate(
                _sorts.length,
                (index) => RadioListTile<String>(
                    value: _sorts[index],
                    groupValue: _sorts[_selected],
                    title: Text(_sorts[index]),
                    onChanged: onSortChanged)));
      });
}
