import 'package:flutter/material.dart';
import 'package:musicplayer/screen/nowplaying.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('My Playlist'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      title: const Text(
                        'Song name',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: const Text(
                        'Artist name',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: const Text(
                        '5:00',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemCount: 10,
              ),
            ),
          ),
          Container(
            height: 80,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 52, 51, 51),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const ScreenNowPLaying();
                      }));
                    },
                    icon: const Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
