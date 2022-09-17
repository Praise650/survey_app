import 'package:flutter/material.dart';
import 'package:survey_app/ui/layouts/base_scaffold.dart';
import 'package:survey_app/ui/layouts/base_scaffold_body.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: BaseScaffoldBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: const [
                Text('Health'),
                Text('Sport'),
              ],
            ),
            Row(
              children: const [
                Text('Finance'),
                Text('Entertainment'),
              ],
            ),
            Row(),
          ],
        ),
      ),
    );
  }
}
