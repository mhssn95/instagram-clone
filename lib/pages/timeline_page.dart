import 'package:flutter/material.dart';
import 'package:instagram/widgets/post_item.dart';

class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 1,
        backgroundColor: Color(0xFFF9F9FA),
        title: Image(
          image: AssetImage("assets/images/Instagram_logo_wordmark.png"),
          height: 40,
        ),
        leading: IconButton(
          icon: Image(
            image: AssetImage("assets/images/camera.png"),
            width: 24,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Image(
              image: AssetImage("assets/images/dm.png"),
              width: 24,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Flexible(
                child: Container(
                  child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return PostItem("hello", "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1001&q=80");
                    },
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Image(
                        image: AssetImage("assets/images/home.png"),
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image(
                        image: AssetImage("assets/images/search.png"),
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image(
                        image: AssetImage("assets/images/add_post.png"),
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image(
                        image: AssetImage("assets/images/like.png"),
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image(
                        image: AssetImage("assets/images/profile.png"),
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
