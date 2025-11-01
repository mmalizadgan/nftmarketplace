import 'package:riverpod/riverpod.dart';
import '../data/repositories/nft_repository.dart';
import '../data/datasources/nft_data_source.dart';
import '../data/models/nft_item.dart';

final nftDataSourceProvider = Provider((ref) {
  return NFTDataSource();
});

final nftRepositoryProvider = Provider((ref) {
  final dataSource = ref.watch(nftDataSourceProvider);
  return NFTRepository(dataSource);
});

final topNFTsProvider = FutureProvider<List<NFTItem>>((ref) async {
  final repository = ref.watch(nftRepositoryProvider);
  return repository.getTopNFTs();
});
