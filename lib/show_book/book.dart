import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowBook extends StatefulWidget {
  const ShowBook({Key? key}) : super(key: key);

  @override
  State<ShowBook> createState() => _ShowBookState();
}

class _ShowBookState extends State<ShowBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book App"),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              BookWidget(
                title: "Planning the Adventure",
                image: "https://picsum.photos/id/1015/200/300",
                content:
                    "      Travel is the act of moving from one place to another, usually for leisure, business, or cultural purposes. It is an essential part of human life and has been practiced for thousands of years. Traveling allows people to experience new cultures, meet new people, and see new sights. \n\n      Travel can take many forms, from short trips to nearby destinations to long-term journeys to far-off lands. It can be done by various modes of transportation, such as by plane, train, car, or boat. Travel can be planned or spontaneous, solo or with others, and can be customized to suit individual preferences and interests. \n\n     Travel can be a transformative experience, broadening one's horizons and deepening their understanding of the world. It can also be a way to escape the routine of daily life, recharge, and gain new perspectives. In addition, travel can also contribute to the local economy, creating jobs and supporting small businesses. \n\n       However, travel also has its challenges and risks. Safety concerns, language barriers, cultural differences, and unexpected events can make travel stressful and sometimes dangerous. It is important to take precautions, research destinations, and plan ahead to ensure a safe and enjoyable trip.",
              ),
              BookWidget(
                title: "A Dog's Purpose",
                image: "https://picsum.photos/id/1025/200/300",
                content:
                    "     Dogs are one of the most beloved and popular pets in the world. They are known for their loyalty, companionship, and playful nature. Dogs come in a wide variety of breeds, each with their own unique characteristics and personalities.\n\n     Dogs have been domesticated for thousands of years and have been bred for different purposes, such as hunting, herding, and companionship. They have a strong sense of smell, which has made them valuable in law enforcement, search and rescue, and as therapy animals.\n\n     Dogs are highly social animals and thrive on human interaction and companionship. They form strong bonds with their owners and are often referred to as 'man's best friend'. Dogs are also very intelligent and trainable, making them ideal as service animals or for other tasks that require discipline and obedience.\n\n     Caring for a dog involves providing them with proper nutrition, exercise, and healthcare. Regular visits to the veterinarian, grooming, and training are important aspects of dog ownership. Dogs also need socialization and mental stimulation to keep them happy and healthy.",
              ),
              BookWidget(
                title: "Waterfall Lover",
                image: "https://picsum.photos/id/1035/200/300",
                content:
                    "      Waterfalls are a natural wonder that can be found all over the world. They are formed when a river or stream flows over a cliff or steep incline, creating a vertical drop in the water's path. Waterfalls can range in size from small cascades to massive falls that drop hundreds of feet.\n\n      The beauty of a waterfall is in the way the water cascades and flows, creating a serene and peaceful atmosphere. The sound of the rushing water and the mist that rises from the falls can be refreshing and invigorating, making waterfalls a popular destination for nature lovers, hikers, and photographers.\n\n      Waterfalls can also be powerful and dangerous, with the force of the water creating strong currents and dangerous eddies. It is important to be cautious and aware of the risks when visiting waterfalls and to follow any safety guidelines or warnings.\n\n      Waterfalls can also have cultural significance, with some being considered sacred or spiritual places by certain communities or religions. In some cultures, waterfalls are believed to have healing powers or to be the dwelling places of spirits or deities.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookWidget extends StatelessWidget {
  final String title;
  final String image;
  final String content;

  const BookWidget({
    required this.title,
    required this.image,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Image.network(image),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookContentPage(content: content),
              ),
            );
          },
          child: Text("read"),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class BookContentPage extends StatelessWidget {
  final String content;

  const BookContentPage({required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Content"),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Introduction",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: 16),
              Text(
                content,
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1.2,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
