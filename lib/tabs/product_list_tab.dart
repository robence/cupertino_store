import 'package:cupertino_store/product_row_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:cupertino_store/model/app_state_model.dart';

class ProductListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        final products = model.getProducts();
        return CustomScrollView(
          semanticChildCount: products.length,
          slivers: <Widget>[
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Cupertino Store'),
            ),
            SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    if (index < products.length) {
                      return ProductRowItem(
                          product: products[index],
                          lastItem: index == products.length - 1);
                    }
                  }),
                ))
          ],
        );
      },
    );
  }
}
