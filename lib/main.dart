import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
//step2: Create class
class Customer {
  String name = "Shanmukha";
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //step3: wrap MaterialApp widget with Provider widget
    return Provider(
      //Step4: give the create argument, it gives or returns Customer class(step2)
      create: (_) => Customer(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //we will pass the Customer class information through the ProviderPackageScreen() with the help of Provider
        home:  ProviderPackageScreen(),
      ),
    );
  }
}

class ProviderPackageScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //Step5: right after the build(very important) call Customer Provider
    final customer = Provider.of<Customer>(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Package Exp"),),
      body: Center(
        //Step6: Now we can access the customer information
        child: Text(customer.name),
      ),
    );
  }
}

