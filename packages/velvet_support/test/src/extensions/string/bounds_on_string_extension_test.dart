import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/velvet_support.dart';

void main() {
  test('BoundsOnStringExtension - after', () {
    expect('hannah'.after('han'), 'nah');
    expect('hannah'.after('n'), 'nah');
    expect('ééé hannah'.after('han'), 'nah');
    expect('hannah'.after('xxxx'), 'hannah');
    expect('hannah'.after(''), 'hannah');
    expect('han0nah'.after('0'), 'nah');
  });

  test('BoundsOnStringExtension - afterLast', () {
    expect('yvette'.afterLast('yve'), 'tte');
    expect('yvette'.afterLast('t'), 'e');
    expect('ééé yvette'.afterLast('t'), 'e');
    expect('yvette'.afterLast('tte'), '');
    expect('yvette'.afterLast('xxxx'), 'yvette');
    expect('yvette'.afterLast(''), 'yvette');
    expect('yv0et0te'.afterLast('0'), 'te');
    expect('----foo'.afterLast('---'), 'foo');
  });

  test('BoundsOnStringExtension - before', () {
    expect('hannah'.before('nah'), 'han');
    expect('hannah'.before('n'), 'ha');
    expect('ééé hannah'.before('han'), 'ééé ');
    expect('hannah'.before('xxxx'), 'hannah');
    expect('hannah'.before(''), 'hannah');
    expect('han0nah'.before('0'), 'han');
  });

  test('BoundsOnStringExtension - beforeLast', () {
    expect('yvette'.beforeLast('tte'), 'yve');
    expect('yvette'.beforeLast('t'), 'yvet');
    expect('ééé yvette'.beforeLast('yve'), 'ééé ');
    expect('yvette'.beforeLast('yve'), '');
    expect('yvette'.beforeLast('xxxx'), 'yvette');
    expect('yvette'.beforeLast(''), 'yvette');
    expect('yv0et0te'.beforeLast('0'), 'yv0et');
  });

  test('BoundsOnStringExtension - between', () {
    expect('abc'.between('', 'c'), 'abc');
    expect('abc'.between('a', ''), 'abc');
    expect('abc'.between('', ''), 'abc');
    expect('abc'.between('a', 'c'), 'b');
    expect('dddabc'.between('a', 'c'), 'b');
    expect('abcddd'.between('a', 'c'), 'b');
    expect('dddabcddd'.between('a', 'c'), 'b');
    expect('hannah'.between('ha', 'ah'), 'nn');
    expect('[a]ab[b]'.between('[', ']'), 'a]ab[b');
    expect('foofoobar'.between('foo', 'bar'), 'foo');
    expect('foobarbar'.between('foo', 'bar'), 'bar');
  });

  test('BoundsOnStringExtension - betweenFirst', () {
    expect('abc'.betweenFirst('', 'c'), 'abc');
    expect('abc'.betweenFirst('a', ''), 'abc');
    expect('abc'.betweenFirst('', ''), 'abc');
    expect('abc'.betweenFirst('a', 'c'), 'b');
    expect('dddabc'.betweenFirst('a', 'c'), 'b');
    expect('abcddd'.betweenFirst('a', 'c'), 'b');
    expect('dddabcddd'.betweenFirst('a', 'c'), 'b');
    expect('hannah'.betweenFirst('ha', 'ah'), 'nn');
    expect('[a]ab[b]'.betweenFirst('[', ']'), 'a');
    expect('foofoobar'.betweenFirst('foo', 'bar'), 'foo');
    expect('foobarbar'.betweenFirst('foo', 'bar'), '');
  });
}
