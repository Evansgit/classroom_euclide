import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';



class AppBarAnimations extends StatelessWidget {
  const AppBarAnimations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text("Draggable Home"),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
      ],
      headerWidget: headerWidget(context),
      headerBottomBar: headerBottomBarWidget(),
      body: [
        listView(),
      ],
      fullyStretchable: true,
      expandedBody: const CameraPreview(),
      backgroundColor: Colors.white,
      appBarColor: Colors.teal,
    );
  }

  Row headerBottomBarWidget() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Title",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.white70),
        ),
      ),
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        color: Colors.white70,
        child: ListTile(
          leading: CircleAvatar(
            child: Text("$index"),
          ),
          title: const Text("Title"),
          subtitle: const Text("Subtitile"),
        ),
      ),
    );
  }
}




class CameraPreview extends StatelessWidget {
  const CameraPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.black),
        SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 20,
                    right: 20,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(.5),
                          child: const Icon(
                            Icons.bolt,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )),
                Positioned(
                  bottom: 50,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            color: Colors.grey[300],
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}