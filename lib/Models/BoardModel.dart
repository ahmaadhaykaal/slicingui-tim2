class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Selamat Datang',
    image: 'assets/StudyTeach.png',
    discription: "Saat kau terpuruk, percayalah bahwa ilmu yang sudah dipelajari akan berarti kemudian hari."
  ),
  UnbordingContent(
    title: 'Selamat Datang',
    image: 'assets/StudyTeach.png',
    discription: "Raihlah ilmu dan untuk meraih ilmu, belajarlah untuk tenang dan sabar."
  ),
  UnbordingContent(
    title: 'Selamat Datang',
    image: 'assets/StudyTeach.png',
    discription: "Saat dirimu menghadapi perubahan, percayalah ada yang selalu membantu."
  ),
];