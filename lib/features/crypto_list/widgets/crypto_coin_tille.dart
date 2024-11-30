import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTille extends StatelessWidget {
  const CryptoCoinTille({
    super.key,
    required this.coinName,
    required this.textTheme,
  });

  final String coinName;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/bit.svg',
        height: 30,
        width: 30,
        placeholderBuilder: (context) => CircularProgressIndicator(),
      ),
      title: Text(
        coinName,
        style: textTheme.bodyMedium,
      ),
      subtitle: Text(
        '20000\$',
        style: textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coinName);
      },
    );
  }
}
