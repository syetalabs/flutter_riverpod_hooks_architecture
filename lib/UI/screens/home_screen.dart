import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/counter_provider.dart';

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = useProvider(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Checkbox(
                value: false,
                onChanged: (value) {
                  _counter.state++;
                },
              ),
              title: Text('Todo Title'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.state++;
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
