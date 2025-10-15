import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  // Set preferred size for AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _showingBalance = false; // state to track balance visibility
  bool _iconOnRight = false;    // state to track icon position

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(12),
        ),
      ),
      title: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('images/istiaq.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Md Irfan Hakim Bhuiyan',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _iconOnRight = true;
                    _showingBalance = true;
                  });

                  // Revert after 1 second
                  Future.delayed(const Duration(seconds: 1), () {
                    setState(() {
                      _iconOnRight = false;
                      _showingBalance = false;
                    });
                  });
                },
                child: Container(
                  width: 134, // ✅ Fixed size container
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Currency Icon with AnimatedAlign
                      AnimatedAlign(
                        alignment: _iconOnRight
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Colors.pink,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/currency.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      // Text (either show balance or amount)
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 400),
                        transitionBuilder: (child, anim) => FadeTransition(
                          opacity: anim,
                          child: child,
                        ),
                        child: Text(
                          _showingBalance ? '৳ 2,350.00' : 'Show balance',
                          key: ValueKey(_showingBalance),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('images/icon_reward.png'),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('images/fly.png'),
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
