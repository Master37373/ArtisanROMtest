#!/usr/bin/env python3
"""Replaces one section (<rom> or <kernel>) of an updater XML and keeps the others.

usage: update_xml.py FILE SECTION key=value [key=value ...]
A key may be given more than once (e.g. change=...), each one becomes its own element.
The ROM build only touches <rom>, the kernel build only <kernel>.
"""
import os
import sys
import xml.etree.ElementTree as ET


def main() -> int:
    if len(sys.argv) < 4:
        print(__doc__)
        return 1
    path, section, pairs = sys.argv[1], sys.argv[2], sys.argv[3:]

    if os.path.exists(path) and os.path.getsize(path) > 0:
        root = ET.parse(path).getroot()
    else:
        root = ET.Element("roms")

    for old in root.findall(section):
        root.remove(old)

    elem = ET.Element(section, {"channel": "stable"})
    for pair in pairs:
        key, _, value = pair.partition("=")
        ET.SubElement(elem, key).text = value

    # keep <rom> first, then <kernel>, so the file stays easy to read
    root.append(elem)
    order = {"rom": 0, "kernel": 1}
    root[:] = sorted(root, key=lambda e: order.get(e.tag, 9))

    ET.indent(root, space="  ")
    ET.ElementTree(root).write(path, encoding="UTF-8", xml_declaration=True)
    with open(path, "a", encoding="utf-8") as f:
        f.write("\n")
    return 0


if __name__ == "__main__":
    sys.exit(main())
