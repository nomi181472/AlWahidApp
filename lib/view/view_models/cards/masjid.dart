

class MasjidCard{
final double distance;
final List<DateTime> todayTimings;
final List<String> publicImageUrls;
final String name;
MasjidCard({
  required this.name,
  required this.distance,
  required this.todayTimings,
  required this.publicImageUrls
});
}