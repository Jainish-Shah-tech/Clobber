import 'package:flutter_ecommerce/helpers/common.dart';
import 'package:flutter_ecommerce/helpers/style.dart';
import 'package:flutter_ecommerce/provider/product.dart';
import 'package:flutter_ecommerce/provider/user_provider.dart';
import 'package:flutter_ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AddStore.dart';
import 'Customers.dart';
import 'Karigars.dart';
import 'PurchaseOrders.dart';
import 'PurchaseInwards.dart';
import 'PurchaseReturn.dart';
import 'SalesReturn.dart';
import 'Suppliers.dart';
import 'TeamMember.dart';
import 'dashboard.dart';
import 'designcatalog.dart';
import 'order.dart';
import 'SalesOrder.dart';
import 'address_screen.dart';
import 'delaychallan.dart';
import 'TaxInvoice.dart';
import 'OpeningStock.dart';
import 'PackDesign.dart';
import 'StockTransfer.dart';
import 'JobSlips.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Tutorial',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(length: 5, child: TabsPage()));
  }
}

class TabsPage extends StatelessWidget {
  bool Small = false;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    // final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      backgroundColor: white,
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: black),
              accountName: CustomText(
                text: userProvider.userModel?.name ?? "username lading...",
                color: white,
                weight: FontWeight.bold,
                size: 18,
              ),
              accountEmail: CustomText(
                text: userProvider.userModel?.email ?? "email loading...",
                color: white,
              ),
            ),
            ListTile(
              onTap: () async {
                await userProvider.getOrders();
                changeScreen(context, jobslips());
              },
              leading: Icon(Icons.ac_unit),
              title: CustomText(text: "Jobslips"),
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'Value8') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => purchaseorders()),
                  );
                } else if (value == 'Value9') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => purchaseinwards()),
                  );
                } else if (value == 'Value10') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => purchasereturn()),
                  );
                }
              },
              child: ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Purchase & Inwards'),
                trailing: Icon(Icons.arrow_downward_rounded),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Value8',
                  child: Text('Purchase Order'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value9',
                  child: Text('Purchase Inward'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value10',
                  child: Text('Purchase Return'),
                ),
              ],
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'Value5') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => openingstock()),
                  );
                } else if (value == 'Value6') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => packdesign()),
                  );
                } else if (value == 'Value7') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => stocktransfer()),
                  );
                }
              },
              child: ListTile(
                leading: Icon(Icons.accessibility),
                title: Text('Manage Stock'),
                trailing: Icon(Icons.arrow_downward_rounded),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Value5',
                  child: Text('Opening Stock'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value6',
                  child: Text('Pack Design'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value7',
                  child: Text('Stock Transfer'),
                ),
              ],
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'Value1') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SalesOrder()),
                  );
                } else if (value == 'Value2') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => delaychallan()),
                  );
                } else if (value == 'Value3') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TaxInvoice()),
                  );
                } else if (value == 'Value4') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => salesreturn()),
                  );
                }
              },
              child: ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('Sales & Delivery'),
                trailing: Icon(Icons.arrow_downward_rounded),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Value1',
                  child: Text('Sales Order'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value2',
                  child: Text('Delivery Challan'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value3',
                  child: Text('Tax Invoice'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value4',
                  child: Text('Sales Return'),
                ),
              ],
            ),
            ListTile(
              onTap: () async {
                await userProvider.getOrders();
                changeScreen(context, OrdersScreen());
              },
              leading: Icon(Icons.bookmark_border),
              title: CustomText(text: "Shared Design History"),
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'Value11') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => karigars()),
                  );
                } else if (value == 'Value12') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => customers()),
                  );
                } else if (value == 'Value13') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Container()),
                  );
                } else if (value == 'Value14') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Suppliers()),
                  );
                } else if (value == 'Value15') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Container()),
                  );
                }
              },
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Masters'),
                trailing: Icon(Icons.arrow_downward_rounded),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Value11',
                  child: Text('Karigars'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value12',
                  child: Text('Customers'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value13',
                  child: Text('Team Members'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value14',
                  child: Text('Suppliers'),
                ),
                const PopupMenuItem<String>(
                  value: 'Value15',
                  child: Text('Agents'),
                ),
                // const PopupMenuItem<String>(
                //   value: 'Value16',
                //   child: Text('Agents'),
                // ),
              ],
            ),
            ListTile(
              onTap: () {
                userProvider.signOut();
              },
              leading: Icon(Icons.exit_to_app),
              title: CustomText(text: "Log out"),
            ),
          ],
        ),
      ),
      appBar:
          AppBar(title: const Text('Clobber'), backgroundColor: Colors.black87),
      body: TabBarView(
        children: [
          LoadDataFromFirestore(),
          MainActivity(),
          AddStore(),
          Container(),
          TeamMember(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        labelStyle: TextStyle(fontSize: Small ? 5.0 : 8.5),
        tabs: [
          Tab(
            icon: Icon(Icons.dashboard),
            text: 'Dashboard',
          ),
          Tab(
            icon: Icon(Icons.business),
            text: 'Design Catalog',
          ),
          Tab(
            icon: Icon(Icons.store),
            text: 'Your Store',
          ),
          Tab(
            icon: Icon(Icons.connect_without_contact),
            text: 'Connection',
          ),
          Tab(
            icon: Icon(Icons.contact_page),
            text: 'Team',
          ),
        ],
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.black,
      ),
    );
  }
}
