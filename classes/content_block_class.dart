class ContentBlock {
  String type; // 'text', 'image', 'audio'
  String data;  // i.e. actual text or link to image/audio file

  ContentBlock({
    required this.type,
    required this.data,
  });
}

