import 'package:flutter/material.dart';

class Sliverwekendcontaer extends StatefulWidget {
  const Sliverwekendcontaer({super.key});

  @override
  State<StatefulWidget> createState() => Sliverwekendcontaerstate();
}

class Sliverwekendcontaerstate extends State {
  bottomshit() {
    showBottomSheet(
        context: context,
        builder: (context) {
          return const Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.link,
                      size: 24,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Invite",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_add_alt_1_outlined,
                      size: 24,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add member",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.groups_3,
                      size: 24,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      " Add Group",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 78,
      backgroundColor: const Color.fromRGBO(195, 36, 34, 1),
      floating: false,
      pinned: true,
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var top = constraints.biggest.height;
          var isPinned =
              top == MediaQuery.of(context).padding.top + kToolbarHeight;
          return FlexibleSpaceBar(
            titlePadding:
                const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isPinned ? 1.0 : 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      CircleAvatar(
                          backgroundImage: AssetImage("assets/image.png")),
                      SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'The Weeknd',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            'Community • +11K Members',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        bottomshit();
                      });
                    },
                  ),
                ],
              ),
            ),
            background: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "The weeknd",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Community • +11K Members",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.share_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
////////////////////////////////////////

class Sliverlistdatasreach extends StatefulWidget {
  const Sliverlistdatasreach({super.key});

  @override
  State<StatefulWidget> createState() => SliverListdata();
}

class SliverListdata extends State {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame....",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const Text(
                "Read more",
                style: TextStyle(
                  color: Color.fromRGBO(239, 69, 111, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(children: [
                SizedBox(
                  height: 20,
                  width: 300,
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 15,
                        width: 66,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(239, 69, 111, 1)),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Outdoor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(239, 69, 111, 1)),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
                Container(
                  height: 20,
                  width: 36,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(239, 69, 111, 1)),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "+1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(239, 69, 111, 1)),
                  ),
                ),
              ]),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Media, docs and links",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 97,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Image.asset("assets/Frame.png");
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const  Text(
                    "Mute notification",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Switch(value: false, onChanged: (value) {},)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.delete_outline_outlined,
                    size: 34,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Clear chat",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 34,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Encryption",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Color.fromRGBO(239, 69, 111, 1),
                    size: 34,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Exit community",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(239, 69, 111, 1)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.report_gmailerrorred,
                    color: Color.fromRGBO(239, 69, 111, 1),
                    size: 34,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Report",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(239, 69, 111, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

/////////////////

class Sliversearchbar extends StatefulWidget {
  const Sliversearchbar({super.key});

  @override
  State<StatefulWidget> createState() => SliverSearchbarstate();
}

class SliverSearchbarstate extends State {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      sliver: SliverAppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Search member',
                  border: InputBorder.none,
                ),
              )
            : const Text('Members'),
        actions: [
          IconButton(
            icon: Icon(
                _isSearching ? Icons.cancel_presentation_sharp : Icons.search),
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  _searchController.clear();
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
