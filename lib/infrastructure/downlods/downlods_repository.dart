import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_point.dart'; 
import 'package:netflix/domain/core/main_failures.dart';
import 'package:netflix/domain/downlod/i_downloads_repo.dart';
import 'package:netflix/domain/downlod/models/downlod.dart';

@LazySingleton(as: IDownloadsRepo)
class DownlodsRepository implements IDownloadsRepo {

  @override
  Future<Either<MainFailures, List<Download>>> getDownlodsImages() async {
   try {
   final Response response=await Dio(BaseOptions()).get(ApiEndPoints.downlods);
   if(response.statusCode==200||response.statusCode==201){

    (response.data['result'] as List).map((e)=>{
      return Download.fromJson(e);
    }).toList();
    
    final List<Download>downlodList=[];
    for(final raw in response.data){
      downlodList.add(Download.fromJson(raw as Map<String,dynamic>));
    }
    print(downlodList);
    return Right(downlodList);
   }else{
    return const Left(MainFailures.serverFailure());
   }
   } catch (_) {
     return const Left(MainFailures.clientFailure());
   }
  }
   
}