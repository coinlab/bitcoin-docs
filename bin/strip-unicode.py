#!/usr/bin/env python
import sys
import codecs

translations = {0x2018: u"'",
                0x2019: u"'",
                0x201C: u'"',
                0x201D: u'"',
                0x2013: u'-',
                }

def main():
    for file_name in sys.argv[1:]:
        print file_name
        strip_file(file_name)

def strip_file(file_name):
    f = codecs.open(file_name, encoding='utf-8')
    t = f.read()
    t = t.translate(translations).encode('ascii')
    f.close()
    f = codecs.open(file_name, 'w', encoding='utf-8')
    f.write(t)
    f.close()


if __name__ == '__main__':
  main()
