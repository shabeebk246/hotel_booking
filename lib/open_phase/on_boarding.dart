class Unboarding{
  String image;
  String text;
  String description;

  Unboarding({
    required this.image,
    required this.text,
    required this.description
});
}
List<Unboarding> Content=[
    Unboarding(
      image: 'assets/images/phase1.png',
      text:'Let’s\nhave the\nbest\nvacation\nwith us',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    ),
    Unboarding(
      image: 'assets/images/phase2.png',
      text: 'Travel\nmade easy\nin your\nhands',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    ),
    Unboarding(
      image: 'assets/images/phase3.png',
      text: 'Let’s\ndiscover\nthe world\nwith us',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    )
];