# ST2/ST3 compat
from __future__ import print_function
import sublime
if sublime.version() < '3000':
    # we are on ST2 and Python 2.X
    _ST3 = False
else:
    _ST3 = True

import os.path
import re
# This will work because makePDF.py puts the appropriate
# builders directory in sys.path
from pdfBuilder import PdfBuilder

DEBUG = True

class ThesisBuilder(PdfBuilder):

    def __init__(self, tex_root, output, builder_settings, platform_settings):
        # Sets the file name parts, plus internal stuff
        super(ThesisBuilder, self).__init__(tex_root, output, builder_settings, platform_settings)
        # Now do our own initialization: set our name, see if we want to display output
        self.name = "Thesis Builder"
        self.display_log = builder_settings.get("display_log", DEBUG)

    def commands(self):
        # Print greeting
        self.display("\n\nHello this is your personal ThesisBuilder.\nI will try to build your document now:\n\n")

        pdflatex = ["pdflatex", "-interaction=nonstopmode", "-synctex=1", "--shell-escape"]
        biber = ["biber"]
        makeglossaries = ["makeglossaries"]
        latexmk = ["latexmk", "-pdf"]

        yield (pdflatex + [self.base_name], "Running pdflatex...\n")
        yield (makeglossaries + [self.base_name], "Running makeglossaries...\n")
        yield (biber + [self.base_name], "Running biber...\n")
        #yield (latexmk + [self.base_name], "Running latexmk...\n")
        yield (pdflatex + [self.base_name], "Running pdflatex...\n")
        yield (pdflatex + [self.base_name], "Running pdflatex...\n")

        self.display("done.\n")
