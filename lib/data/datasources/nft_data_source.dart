import 'package:nftmarketplace/core/constants/app_assets.dart';
import 'package:nftmarketplace/data/models/nft_item.dart';

final List<NFTItem> _mockTopNFTs = [
  const NFTItem(
    rank: 1,
    name: "Azumi",
    nftPicture: AppAssets.bat,
    nftPrice: 20055.02,
    nftGrowth: 3.99,
  ),
  const NFTItem(
    rank: 2,
    name: "Hape Prime",
    nftPicture: AppAssets.bat,
    nftPrice: 18055.45,
    nftGrowth: 33.79,
  ),
  const NFTItem(
    rank: 3,
    name: "Cryoto (1)",
    nftPicture: AppAssets.bat,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
  const NFTItem(
    rank: 4,
    name: "Cryoto (2)",
    nftPicture: AppAssets.bat,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
  const NFTItem(
    rank: 5,
    name: "Cryoto (3)",
    nftPicture: AppAssets.bat,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
  const NFTItem(
    rank: 6,
    name: "Cryoto (4)",
    nftPicture: AppAssets.bat,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
  const NFTItem(
    rank: 7,
    name: "Cryoto (5)",
    nftPicture: AppAssets.bat,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
  const NFTItem(
    rank: 8,
    name: "Cryoto (6)",
    nftPicture: AppAssets.bat,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
  const NFTItem(
    rank: 9,
    name: "Cryoto (7)",
    nftPicture: AppAssets.bat,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
  const NFTItem(
    rank: 10,
    name: "Cryoto (8)",
    nftPicture: AppAssets.bat,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
];

class NFTDataSource {
  Future<List<NFTItem>> fetchTopNFTs() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockTopNFTs;
  }
}
