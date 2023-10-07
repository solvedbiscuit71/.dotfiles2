import os

HOME = os.environ.get("HOME")
SEP = os.sep
CONFIG = HOME + SEP + '.config' + SEP


config_folders = list(filter(
    lambda folder: folder[0] != '.' and os.path.isdir(folder),
    os.listdir()
))
config_files = {
    'bash': ['.bashrc', '.bash_profile', '.inputrc'],
    'tmux': ['.tmux.conf']
}

for folder in config_folders:
    if folder in config_files:
        continue

    dst = f"{CONFIG}{folder}"
    if os.path.isdir(dst):
        print(f"unlink {dst}")
        os.unlink(dst)

for [folder, files] in config_files.items():
    for file in files:
        dst = f"{HOME}{SEP}{file}"
        if os.path.isfile(dst):
            print(f"unlink {dst}")
            os.unlink(dst)
