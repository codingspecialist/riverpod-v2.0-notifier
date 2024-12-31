
// SRP : 데이터를 가져오는 곳 (휴대폰 디바이스(파일), 휴대폰 DB, Firebase(외부서버), 내서버, 공공데이터서버)
class HomeRepository {

  const HomeRepository();

  Future<List<int>> getList() async {
    List<int> response = await Future.delayed(Duration(seconds: 3), () {
      return [1,2,3,4];
    },);

    return response;
  }

  Future<int> getOne() async{
    int response = await Future.delayed(Duration(seconds: 3), () {
      return 5;
    },);
    return response;
  }
}