import os

HOME = os.environ.get("HOME")
SEP = os.sep
CONFIG = HOME + SEP + '.config'


def check_config(folder):
    return folder[0] != '.' and os.path.isdir(folder)


config_folders = list(filter(check_config, os.listdir()))

for folder in config_folders:
    dst = f"{CONFIG}{SEP}{folder}"
    if os.path.isdir(folder):
        print(f'unlink {dst}')
        os.unlink(dst)
