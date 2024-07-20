import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  ArmorTitan armorTitan = ArmorTitan();
  AttackTitan attackTitan = AttackTitan();
  BeastTitan beastTitan = BeastTitan();
  Human human = Human();

  armorTitan.setPowerPoint(10);
  print('ArmorTitan power: ${armorTitan.getPowerPoint()}');
  print('ArmorTitan action: ${armorTitan.terjan()}');

  attackTitan.setPowerPoint(20);
  print('AttackTitan power: ${attackTitan.getPowerPoint()}');
  print('AttackTitan action: ${attackTitan.punch()}');

  beastTitan.setPowerPoint(15);
  print('BeastTitan power: ${beastTitan.getPowerPoint()}');
  print('BeastTitan action: ${beastTitan.lempar()}');

  human.setPowerPoint(5);
  print('Human power: ${human.getPowerPoint()}');
  print('Human action: ${human.killAlltitan()}');
}