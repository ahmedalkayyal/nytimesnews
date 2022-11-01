abstract class HomeEvents{}

class GetHomeData extends HomeEvents{
  final int period;

  GetHomeData(this.period);
}