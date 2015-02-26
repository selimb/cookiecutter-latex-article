import os
import shutil
import json

def check_true(option):
    """Check if option is true.

    Account for user inputting "yes", "Yes", "True", "Y" ...
    """
    option = option.lower()
    if 'y' in option or 't' in option:
        return True
    else:
        return False

def process_bibtex(bibtex, tex_root):
    """Act on ``bibtex`` option.

    Parameters
    ----------
    bibtex : bool
        If True, nothing is done.
        Else, delete dabib.bib
    tex_root : str
        Path to root of LaTeX project.
    """
    if bibtex:
        return
    bibtex_path = os.path.join(tex_root, 'dabib.bib')
    os.remove(bibtex_path)

def process_nomencl(nomencl, tex_root):
    """Act on ``nomencl`` option.

    Parameters
    ----------
    nomencl : bool
        If True, nothing is done.
        Else, delete makeidx.bat
    tex_root : str
        Path to root of LaTeX project.
    """
    if nomencl:
        return
    # To account for the user cloning the template and deleting one of the two
    # due to this platform.
    makeidx_path = os.path.join(tex_root, 'makeidx.bat')
    os.remove(makeidx_path)

if __name__ == '__main__':
    # TODO: Include conditional for tex root.
    tex_root = os.path.join(os.getcwd(),'tex')
    with open('options.json','r') as f:
        options = json.load(f)
        process_bibtex(check_true(options['bibtex']), tex_root)
        process_nomencl(check_true(options['nomenclature']), tex_root)




