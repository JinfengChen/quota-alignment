#!/usr/bin/env python
# -*- coding: UTF-8 -*-

"""
%prog qa_file --qbed query.bed --sbed subject.bed

convert qa_file back to the original gene names
"""

import os.path as op
import itertools
import sys

from bed_utils import Bed, Raw

def qa_to_pairs(qa, qbed, sbed):

    for s in qa:
        query = qbed[s.pos_a].accn
        subject = sbed[s.pos_b].accn
        print "\t".join((query, subject))


if __name__ == "__main__":

    import optparse

    parser = optparse.OptionParser(__doc__)
    parser.add_option("--qbed", dest="qbed",
            help="path to qbed or qflat")
    parser.add_option("--sbed", dest="sbed",
            help="path to sbed or sflat")

    (options, args) = parser.parse_args()

    if not (len(args) == 1 and options.qbed and options.sbed):
        sys.exit(parser.print_help())

    qbed = Bed(options.qbed)
    sbed = Bed(options.sbed)

    qa_file = args[0]
    qa = Raw(qa_file)

    qa_to_pairs(qa, qbed, sbed)

