import 'package:flutter/material.dart';

class SliversearchList extends StatefulWidget{
  const SliversearchList({super.key});

  
  @override
  State<StatefulWidget> createState()=> _SliversearchListState();
  
}

class _SliversearchListState extends State {
  int str=0;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 15,
            (BuildContext context, int index) {
      return Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 20, right: 30),
          child: Row(
            children: [
              Image.asset(
                "assets/iconimage.png",
                height: 41,
                width: 41,
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                children: [
                  Text(
                    "Yashika",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "29, India",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(73, 73, 73, 1),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: (str==0)?const Color.fromRGBO(239, 69, 111, 1):Colors.grey),
                  onPressed: () {
                    setState(() {
                      str=index;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 32,
                    width: 80,
                    child: 
                    (str==0)?
                     const Text(
                      "Add",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ): const Text(
                      "folloing",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ))
            ],
          ));
    }));
  }
}
