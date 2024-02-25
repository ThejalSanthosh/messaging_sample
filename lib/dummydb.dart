class DummyDb{

  static List dummyImages=[       

   "https://randomuser.me/api/portraits/men/1.jpg","https://randomuser.me/api/portraits/women/2.jpg","https://randomuser.me/api/portraits/men/3.jpg",
   "https://randomuser.me/api/portraits/women/4.jpg","https://randomuser.me/api/portraits/men/5.jpg","https://randomuser.me/api/portraits/women/6.jpg",
   "https://randomuser.me/api/portraits/men/7.jpg","https://randomuser.me/api/portraits/women/8.jpg","https://randomuser.me/api/portraits/men/9.jpg",
"https://randomuser.me/api/portraits/women/10.jpg", "https://randomuser.me/api/portraits/men/11.jpg","https://randomuser.me/api/portraits/women/12.jpg",
  "https://randomuser.me/api/portraits/men/13.jpg", "https://randomuser.me/api/portraits/women/14.jpg",
  "https://randomuser.me/api/portraits/men/15.jpg","https://randomuser.me/api/portraits/women/16.jpg",
  ];


  static List dummyChat = [  {
    "profilePic": dummyImages[0],
    "userName": "Alice Johnson",
    "messages": "Hello there!",
    "time": "12:23am",
    "count": 7
  },
  {
    "profilePic": dummyImages[1],
    "userName": "John Smith",
    "messages": "Hey, how's it going?",
    "time": "12:45am",
    "count": 0
  },
  {
    "profilePic": dummyImages[2],
    "userName": "Emily Davis",
    "messages": "Greetings!",
    "time": "12:12am",
    "count": 11
  },
  {
    "profilePic": dummyImages[3],
    "userName": "Daniel Brown",
    "messages": "What's up?",
    "time": "12:34am",
    "count": 8
  },
  {
    "profilePic": dummyImages[4],
    "userName": "Sophia Miller",
    "messages": "Hi there!",
    "time": "12:56am",
    "count": 5
  },
  {
    "profilePic": dummyImages[5],
    "userName": "Caleb Wilson",
    "messages": "Howdy!",
    "time": "12:01am",
    "count": 14
  },
  {
    "profilePic": dummyImages[6],
    "userName": "Olivia Moore",
    "messages": "Good to see you!",
    "time": "12:43am",
    "count": 9
  },
  {
    "profilePic":dummyImages[7],
    "userName": "Matthew Taylor",
    "messages": "Hello, world!",
    "time": "12:30am",
    "count": 6
  },
  {
    "profilePic": dummyImages[8],
    "userName": "Ella White",
    "messages": "Hey!",
    "time": "12:15am",
    "count": 12
  },
  {
    "profilePic": dummyImages[9],
    "userName": "Gabriel Harris",
    "messages": "Sup?",
    "time": "12:22am",
    "count": 10
  },
  {
    "profilePic": dummyImages[10],
    "userName": "Ava Martin",
    "messages": "Greetings!",
    "time": "12:09am",
    "count": 16
  },
  {
    "profilePic": dummyImages[11],
    "userName": "Logan Johnson",
    "messages": "How are you?",
    "time": "12:37am",
    "count": 4
  },
  {
    "profilePic": dummyImages[12],
    "userName": "Grace Davis",
    "messages": "Hey!",
    "time": "12:18am",
    "count": 13
  },
  {
    "profilePic": dummyImages[13],
    "userName": "Ethan Taylor",
    "messages": "Hi, friend!",
    "time": "12:49am",
    "count": 2
  },
  {
    "profilePic": dummyImages[14],
    "userName": "Emma Miller",
    "messages": "Hello!",
    "time": "12:10am",
    "count": 15
  },
 ];

static List sampleMessage=[{"text": "Hello!", "isSender": false},
{"text": "Hi there!", "isSender": true},
    {"text": "How are you?", "isSender": false},
    {"text": "I'm good, thanks!", "isSender": true},
    {"text": "What's up?", "isSender": false},
    {"text": "Not much, just working on Flutter.", "isSender": true}];


static List activeNow =[...dummyChat]..shuffle();


}




