import 'package:fease/model/activity_model.dart';
import 'package:fease/model/destination_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;
  const DestinationScreen({
    super.key,
    required this.destination,
  });

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2.0),
                          blurRadius: 6.0)
                    ],
                  ),
                  child: Hero(
                    tag: widget.destination.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image(
                        image: AssetImage(widget.destination.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 30,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.search),
                          iconSize: 25,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(FontAwesomeIcons.arrowDownShortWide),
                          iconSize: 25,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.destination.city,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 10,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.destination.country,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Positioned(
                right: 20,
                bottom: 20,
                child: Icon(
                  Icons.location_on,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Expanded(
              child: ListView.builder(
            padding: const EdgeInsets.only(top: 10, bottom: 15),
            itemCount: widget.destination.activities.length,
            itemBuilder: (BuildContext context, int index) {
              Activity activity = widget.destination.activities[index];
              return Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 20, 20, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120,
                                child: Text(
                                  activity.name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "\$${activity.price} ",
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Text(
                                    "per pax",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Text(
                            activity.type,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(5),
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.teal[100],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  activity.startTimes[0],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.teal[100],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Text(activity.startTimes[1]),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      left: 20,
                      bottom: 15,
                      top: 15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          width: 110,
                          image: AssetImage(activity.imageurl),
                          fit: BoxFit.cover,
                        ),
                      ))
                ],
              );
            },
          ))
        ],
      ),
    );
  }
}
