import 'package:flutter/material.dart';
import 'package:pertemuan5/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color background = Color(0xFFFFF6ED);
  static const Color primary = Color(0xFFE85D04);
  static const Color dark = Color(0xFF231F20);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> foods = [
      {
        'nama': 'Nasi Goreng Spesial',
        'harga': 25000,
        'deskripsi':
            'Nasi goreng racikan khas rumahan dengan telur, ayam, dan sambal bawang yang menggugah selera.',
        'image':
            'https://images.unsplash.com/photo-1512058564366-18510be2db19?auto=format&fit=crop&w=800&q=80',
      },
      {
        'nama': 'Rendang Daging Sapi',
        'harga': 45000,
        'deskripsi':
            'Daging sapi empuk dimasak perlahan bersama rempah pilihan hingga bumbu meresap sempurna.',
        'image':
            'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?auto=format&fit=crop&w=800&q=80',
      },
      {
        'nama': 'Sate Ayam Madura',
        'harga': 30000,
        'deskripsi':
            'Tusuk sate ayam bakar dengan aroma khas arang, disajikan dengan bumbu kacang yang gurih.',
        'image':
            'https://images.unsplash.com/photo-1529563021893-cc83c992d75d?auto=format&fit=crop&w=800&q=80',
      },
      {
        'nama': 'Bakso Urat Jumbo',
        'harga': 20000,
        'deskripsi':
            'Bakso urat bertekstur kenyal dalam kuah kaldu sapi hangat, lengkap dengan mie dan sayuran.',
        'image':
            'https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=800&q=80',
      },
      {
        'nama': 'Soto Betawi',
        'harga': 28000,
        'deskripsi':
            'Soto berkuah santan kental dengan irisan daging, tomat, dan kentang yang kaya rempah.',
        'image':
            'https://images.unsplash.com/photo-1547592166-23ac45744acd?auto=format&fit=crop&w=800&q=80',
      },
      {
        'nama': 'Ayam Geprek Sambal Ijo',
        'harga': 18000,
        'deskripsi':
            'Ayam crispy yang digeprek dengan sambal ijo pedas, cocok disantap bersama nasi hangat.',
        'image':
            'https://images.unsplash.com/photo-1626645738196-c2a7c87a8f58?auto=format&fit=crop&w=800&q=80',
      },
      {
        'nama': 'Mie Goreng Jawa',
        'harga': 22000,
        'deskripsi':
            'Mie goreng dengan bumbu manis gurih khas Jawa, dilengkapi sayuran dan telur mata sapi.',
        'image':
            'https://images.unsplash.com/photo-1585032226651-759b368d7246?auto=format&fit=crop&w=800&q=80',
      },
      {
        'nama': 'Gado-Gado Sayur Segar',
        'harga': 20000,
        'deskripsi':
            'Aneka sayuran segar rebus dengan tahu, tempe, telur, dan siraman bumbu kacang lezat.',
        'image':
            'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&fit=crop&w=800&q=80',
      },
    ];

    return Scaffold(
      backgroundColor: background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: dark,
            surfaceTintColor: Colors.transparent,
            title: const Text(
              'Kuliner Nusantara',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                color: Colors.white,
              ),
            ),
            centerTitle: false,
            iconTheme: const IconThemeData(color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF231F20), Color(0xFF7A2E00), primary],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: -30,
                      top: -20,
                      child: Icon(
                        Icons.restaurant_menu,
                        size: 180,
                        color: Colors.white.withValues(alpha: 0.08),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 26,
                      right: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.18),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              'Pilihan Hari Ini',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Makan Enak,\nHati Senang',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              height: 1.15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Rekomendasi Menu',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: dark,
                    ),
                  ),
                  Text(
                    '${foods.length} menu',
                    style: TextStyle(
                      fontSize: 13,
                      color: dark.withValues(alpha: 0.55),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            sliver: SliverList.separated(
              itemCount: foods.length,
              separatorBuilder: (context, index) => const SizedBox(height: 14),
              itemBuilder: (context, index) {
                final food = foods[index];
                return _FoodCard(food: food);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _FoodCard extends StatelessWidget {
  const _FoodCard({required this.food});

  final Map<String, dynamic> food;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(
                nama: food['nama'],
                harga: food['harga'],
                deskripsi: food['deskripsi'],
                image: food['image'],
              ),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 14,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            children: [
              Hero(
                tag: food['image'],
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    food['image'],
                    width: 96,
                    height: 96,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, progress) {
                      if (progress == null) return child;
                      return Container(
                        width: 96,
                        height: 96,
                        color: const Color(0xFFF2E4D5),
                        child: const Center(
                          child: SizedBox(
                            width: 22,
                            height: 22,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: HomePage.primary,
                            ),
                          ),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 96,
                      height: 96,
                      color: const Color(0xFFF2E4D5),
                      child: const Icon(
                        Icons.fastfood_outlined,
                        color: HomePage.primary,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food['nama'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: HomePage.dark,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      food['deskripsi'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.35,
                        color: HomePage.dark.withValues(alpha: 0.55),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: HomePage.primary.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            formatRupiah(food['harga']),
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: HomePage.primary,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                          color: HomePage.primary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String formatRupiah(int value) {
  final str = value.toString();
  final buffer = StringBuffer();
  for (var i = 0; i < str.length; i++) {
    if (i > 0 && (str.length - i) % 3 == 0) buffer.write('.');
    buffer.write(str[i]);
  }
  return 'Rp $buffer';
}
