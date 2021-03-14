import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:cupertino_store/model/app_state_model.dart';
import 'app.dart';

void main() {
  return runApp(
    ChangeNotifierProvider(
      create: (_) => AppStateModel()..loadProducts(),
      child: CupertinoStoreApp(),
    ),
  );
}
