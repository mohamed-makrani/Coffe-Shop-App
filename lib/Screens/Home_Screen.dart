import 'package:coffeshopapp/widgets/Items_widgets.dart';
import 'package:coffeshopapp/widgets/home_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with a specific length and vsync
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children:  [
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                          InkWell(

                            onTap: (){},
                            child: Icon(Icons.sort_rounded, color: Colors.white.withOpacity(0.5) ,size:30 ,),
                          ),
                          InkWell(

                            onTap: (){},
                            child: Icon(Icons.notification_add, color: Colors.white.withOpacity(0.5) ,size:30 ,),
                          )
                   ],
                ),
                ),
              const SizedBox(height: 30,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15 ),
              child: const Text ('its great day for coffee',style: TextStyle(
                  color:   Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
              ),),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'find your coffee',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),

                    ),
                prefixIcon: Icon(Icons.search, size:30 , color: Colors.white.withOpacity(0.5),)
                
                  ),
                ),
              ),
              TabBar (
                controller: _tabController,
                labelColor: const Color.fromARGB(255, 245, 148, 4),
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                isScrollable: true,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: Color.fromARGB(255, 245, 148, 4),

                  ),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                      labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                      labelPadding: const EdgeInsets.symmetric(horizontal: 15),
                tabs: 
              const [
                   Tab(text: 'Hot coffee',),
                   Tab(text: 'Cold coffee',),
                   Tab(text: 'Cappuiccino',),
                   Tab(text: 'Americano',),
              ]),
             const SizedBox(height: 15,),
              Center(child: [
                 ItemsWidget(),
                   ItemsWidget(),
                    ItemsWidget(),
                     ItemsWidget(),
              ] 
              [_tabController.index]
              ,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}

