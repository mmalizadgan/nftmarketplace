import 'package:nftmarketplace/core/constants/app_assets.dart';
import 'package:nftmarketplace/data/models/nft_item.dart';

final List<NFTItem> _mockTopNFTs = [
  const NFTItem(
    rank: 1,
    name: "Azumi",
    nftPicture: AppAssets.azumi,
    nftPrice: 20055.02,
    nftGrowth: 3.99,
  ),
  const NFTItem(
    rank: 2,
    name: "Hape Prime",
    nftPicture: AppAssets.hapePrime,
    nftPrice: 18055.45,
    nftGrowth: 33.79,
  ),
  const NFTItem(
    rank: 3,
    name: "Cryoto",
    nftPicture: AppAssets.cryoto,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
  const NFTItem(
    rank: 4,
    name: "Ape Clube",
    nftPicture: AppAssets.apeClub,
    nftPrice: 88055.12,
    nftGrowth: 3.99,
  ),
  const NFTItem(
    rank: 5,
    name: "Bat",
    nftPicture: AppAssets.bat,
    nftPrice: 90055.62,
    nftGrowth: -6.56,
  ),
  const NFTItem(
    rank: 6,
    name: "Mutant",
    nftPicture: AppAssets.mutant,
    nftPrice: 9095.27,
    nftGrowth: 3.99,
  ),
  const NFTItem(
    rank: 7,
    name: "Metaverse",
    nftPicture: AppAssets.metaverse1,
    nftPrice: 10055.02,
    nftGrowth: 3.99,
  ),
  const NFTItem(
    rank: 8,
    name: "Mountain",
    nftPicture: AppAssets.mountain,
    nftPrice: 8055.73,
    nftGrowth: 3.99,
  ),
  const NFTItem(
    rank: 9,
    name: "Mutant Ape",
    nftPicture: AppAssets.mutantApe,
    nftPrice: 5055.73,
    nftGrowth: 3.99,
  ),
  const NFTItem(
    rank: 10,
    name: "The Sandbox",
    nftPicture: AppAssets.theSandbox,
    nftPrice: 1055.02,
    nftGrowth: -1.99,
  ),
];

class NFTDataSource {
  Future<List<NFTItem>> fetchTopNFTs() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockTopNFTs;
  }
}
