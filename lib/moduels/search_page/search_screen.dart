import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});



  void _showModal(BuildContext context) {
    Navigator.of(context).push(FullScreenSearchModal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IRL.com',style: TextStyle(
        color: Colors.brown,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),), actions: [
        // this button is used to open the search modal
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () => _showModal(context),
        )
      ]),
      body: Container(),
    );
  }
}


class FullScreenSearchModal extends ModalRoute {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.6);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0, horizontal: 20),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        suffixIcon: Icon(Icons.close),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                   SizedBox(
                    width: 10,
                  ),
                  // This button is used to close the search modal
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('Cancel'))
                ],
              ),

              // display other things like search history, suggestions, search results, etc.
               SizedBox(
                height: 20,
              ),
               Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text('Recently Searched',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
               ListTile(
                title: Text("Men Salons"),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.close),
              ),
               ListTile(
                title: Text('Nails'),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.close),
              ),
               ListTile(
                title: Text('Toxin'),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.close),
              ),
               ListTile(
                title: Text('Skin Care'),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.close),
              ),
               ListTile(
                title: Text('Hair cut'),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.close),
              )
            ],
          ),
        ),
      ),
    );
  }

  // animations for the search modal
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // add fade animation
    return FadeTransition(
      opacity: animation,
      // add slide animation
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }
}

// This is the main screen of the application



