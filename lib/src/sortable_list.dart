import 'package:flutter/material.dart';

class SortableController<T> {
  Function(List<T> items) _setItems;
  void setItems(List<T> items) => _setItems(items);
}

class SortableListView<T> extends StatefulWidget {
  final SortableController<T> controller;
  final bool Function(T t1, T t2) compare;
  final List<T> initial;
  final IndexedWidgetBuilder itemBuilder;

  const SortableListView(
      {Key key,
      @required this.compare,
      @required this.controller,
      @required this.initial,
      @required this.itemBuilder})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SortableListViewState<T>();
}

class _SortableListViewState<T> extends State<SortableListView> {
  List<T> _items;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._items = widget.initial;
    this.widget.controller._setItems = _setItems;
  }

  void _setItems(List<T> items) {
    setState(() {
      this._items = items;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: widget.itemBuilder,
    );
  }
}
