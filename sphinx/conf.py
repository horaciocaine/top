import sys, os

sys.path.append(os.path.dirname(os.path.abspath(__file__)))

needs_sphinx = '1.0'
extensions = ['sphinx.ext.autodoc', 'sphinx.ext.doctest',
              'sphinx.ext.todo', 'sphinx.ext.coverage', 'sphinx.ext.ifconfig',
              'sphinx.ext.viewcode', 'sphinx.ext.extlinks']
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'Swiftmailer'
copyright = u'2010, The Swiftmailer Documentation Team'
version = '1.0'
release = '1.0.0'
exclude_patterns = ['_build']
htmlhelp_basename = 'swiftmailerdoc'
latex_documents = [
  ('index', 'Swiftmailer.tex', u'Swiftmailer Documentation',
   u'The Swiftmailer Documentation Team', 'manual'),
]
latex_use_parts = True
latex_domain_indices = False
latex_paper_size = 'a4'
man_pages = [
    ('index', 'Swiftmailer', u'Swiftmailer Documentation',
     [u'The Swiftmailer Documentation Team'], 1)
]
epub_title = u'Swiftmailer'
epub_author = u'The Swiftmailer Documentation Team'
epub_publisher = u'The Swiftmailer Documentation Team'
epub_copyright = u'2010, The Swiftmailer Documentation Team'
intersphinx_mapping = {}

highlight_language = 'php'

sys.path.append(os.path.abspath('_themes'))
html_theme_path = ['_themes']
html_copy_source = False
html_title = 'Documentation'
html_show_sourcelink = False
html_show_sphinx = False
html_use_opensearch = ''
html_use_modindex = True

#html_sidebars = {
#    'index':  ['alert.html', 'searchbox.html', 'philosophy.html', 'ajax.html'],
#    'search': ['alert.html', 'searchbox.html', 'philosophy.html', 'ajax.html'],
#    '**':     ['alert.html', 'localtoc.html', 'searchbox.html'], #'relations.html',
#}
# hack to enable PHP highlighting for PHP code not between "<?php" "?>" by default
from sphinx.highlighting import lexers
from pygments.lexers.web import PhpLexer
lexers['php'] = PhpLexer(startinline=True)
pygments_style = "swiftmailer.SwiftmailerStyle"
primary_domain = "php"


html_theme = os.environ.get("SPHINX_THEME");
if not html_theme:
    html_theme = "swiftmailer"
