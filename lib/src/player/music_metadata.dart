import 'package:flutter/foundation.dart';
import 'package:music_player/src/internal/meta.dart';

/// Music metadata
class MusicMetadata {
  final Map extras;
  final String mediaId;
  final String mediaUri;
  final String title;
  final String subtitle;

  @nonNull
  final int duration;
  final String iconUri;

  MusicMetadata({
    this.extras,
    @required this.mediaId,
    this.title,
    this.subtitle,
    this.duration = 0,
    this.iconUri,
    this.mediaUri,
  })  : assert(mediaId != null),
        assert(duration != null);

  bool isNotEmpty() {
    return title != null && title.isNotEmpty;
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is MusicMetadata && mediaId == other.mediaId;

  @override
  int get hashCode => mediaId.hashCode;

  @override
  String toString() {
    return 'MusicMetadata{mediaId: $mediaId, title: $title, subtitle: $subtitle}';
  }
}
