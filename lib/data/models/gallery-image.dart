part of data;

@immutable
class GalleryImageModel {
  final String previewImage;

  const GalleryImageModel({
    this.previewImage: 'images/dogelog.jpg'
  });

  static const initial = const GalleryImageModel();
}