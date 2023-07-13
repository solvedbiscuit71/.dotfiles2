import os
import shutil

HOME = os.environ.get("HOME")
SEP = os.sep
CONFIG = HOME + SEP + '.config'
DOTFILES = HOME + SEP + '.dotfiles2'


def check_config(folder):
    return folder[0] != '.' and os.path.isdir(folder)


config_folders = list(filter(check_config, os.listdir()))

if os.path.isdir('.backup'):
    shutil.rmtree('.backup')

os.mkdir('.backup')

for folder in config_folders:
    dst = f"{CONFIG}{SEP}{folder}"

    if os.path.isdir(dst) and not os.path.islink(dst):
        print(f"move {dst} to {DOTFILES}{SEP}.backup")
        shutil.move(dst, '.backup')

for folder in config_folders:
    src = f"{DOTFILES}{SEP}{folder}"
    dst = f"{CONFIG}{SEP}{folder}"

    if os.path.islink(dst):
        print(f"{dst} already exist")
    else:
        print(f"link {dst} -> {src}")
        os.symlink(src, dst)
