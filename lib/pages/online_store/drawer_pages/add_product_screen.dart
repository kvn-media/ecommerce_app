import 'package:ecommerce_app/pages/online_store/inner_screens/upload_product_form.dart';
import 'package:ecommerce_app/widgets/flurry_drawer/flurry_navigation.dart';
import 'package:flutter/material.dart';

final addProductScreen = new Screen(
    contentBuilder: (BuildContext context) {
      return UploadProductForm();
    }
);