import 'package:nftmarketplace/data/models/nft_item.dart';
import 'package:nftmarketplace/data/datasources/nft_data_source.dart';

class NFTRepository {
  final NFTDataSource dataSource;

  NFTRepository(this.dataSource);

  Future<List<NFTItem>> getTopNFTs() async {
    return dataSource.fetchTopNFTs();
  }
}
