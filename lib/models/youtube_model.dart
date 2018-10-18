class YoutubeModel {
  final String title;
  final String description;
  final String thumbNail;
  final String publishedTime;
  final String channelTitle;
  final String channelAvatar;
  final String viewCount;
  final String likeCount;
  final String dislikeCount;

  YoutubeModel(
      {this.title,
        this.description,
        this.thumbNail,
        this.publishedTime,
        this.channelTitle,
        this.channelAvatar,
        this.viewCount,
        this.likeCount,
        this.dislikeCount});
}

List<YoutubeModel> youtubeData = [
  YoutubeModel(
    title: "DJ Snake - Taki Taki ft. Selena Gomez, Ozuna, Cardi B",
    description:
    "DJ Snake - Taki Taki ft. Selena Gomez, Ozuna, Cardi takes you on a ride",
    thumbNail:
    "https://i.ytimg.com/vi/ixkoVwKQaJg/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDrYjizQef0rnqvBc0mZyU3k13yrg",
    publishedTime: "2 weeks ago",
    channelTitle: "DJ Snake",
    channelAvatar:
    "https://yt3.ggpht.com/a-/AN66SAzkcvkwVn1Y5Zdpb1jkn9zyJ7vGxO8qHBxCTg=s288-mo-c-c0xffffffff-rj-k-no",
    viewCount: "50M views",
    likeCount: "34K",
    dislikeCount: "2K",
  ),
  YoutubeModel(
    title: "Pixel 3 XL Second Impression: Notch City!",
    description: "Marques Brownlee gives his opinion on Pixel 3 XL",
    thumbNail:
    "https://i.ytimg.com/vi/Lg9N8XAZ6u4/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLC5n3UMS9pjWuzugjML9AcoqbEMOA",
    publishedTime: "16 hours ago",
    channelTitle: "Marqueus Brownlee",
    channelAvatar:
    "https://yt3.ggpht.com/a-/AN66SAwxVf-12cuqSiSP2HKPkpDqI0NCAghAiE7IVg=s288-mo-c-c0xffffffff-rj-k-no",
    viewCount: "917K views",
    likeCount: "20k",
    dislikeCount: "51",
  ),
  YoutubeModel(
    title: "Eminem - Venom",
    description: "Listen to Venom (Music From The Motion Picture), out now: http://smarturl.it/EminemVenom",
    thumbNail:
    "https://i.ytimg.com/vi/8CdcCD5V-d8/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLA7A5_7k458KMkDNG0sweixgq856g",
    publishedTime: "6 days ago",
    channelTitle: "EminemMusic",
    channelAvatar:
    "https://yt3.ggpht.com/-qtnbIDAbSNQ/AAAAAAAAAAI/AAAAAAAAAJc/Zt6FE6ofr1I/s88-nd-c-c0xffffffff-rj-k-no/photo.jpg",
    viewCount: "53M views",
    likeCount: "20k",
    dislikeCount: "51",
  ),
];
