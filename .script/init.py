import os
import shutil

"""
global constant
"""
SEP = os.sep
HOME = os.environ.get("HOME") + SEP
CONFIG = f"{HOME}.config{SEP}"
DOTFILES = f"{HOME}.dotfiles2{SEP}"


config_folders = list(filter(
    lambda folder: folder[0] != '.' and os.path.isdir(folder),
    os.listdir()
))
config_files = {
    'bash': ['.bashrc', '.bash_profile', '.inputrc'],
    'tmux': ['.tmux.conf']
}


"""
.backup directory

.backup folder is used to backup an existing config
"""
if os.path.isdir('.backup'):
    shutil.rmtree('.backup')

os.mkdir('.backup')

"""
moving existing config to .backup
"""
if os.path.isdir(CONFIG):
    for folder in config_folders:
        dst = f"{CONFIG}{folder}"

        if folder not in config_files and os.path.isdir(dst) and not os.path.islink(dst):
            print(f"move {dst} to .backup")
            shutil.move(dst, '.backup')

    for files in config_files.values():
        for file in files:
            if os.path.isfile(f"{HOME}{file}") and not os.path.islink(f"{HOME}{file}"):
                print(f"move {file} to .backup")
                shutil.move(f"{HOME}{file}", '.backup')
else:
    print("creating ~/.config")
    os.mkdir(CONFIG)

"""
linking .dotfiles2
"""
for folder in config_folders:
    src = f"{DOTFILES}{folder}"
    dst = f"{CONFIG}{folder}"

    if folder in config_files:
        continue

    if os.path.islink(dst):
        print(f"{dst} already exist")
    else:
        print(f"link {dst} -> {src}")
        os.symlink(src, dst)

for [folder, files] in config_files.items():
    for file in files:
        src = f"{DOTFILES}{folder}{SEP}{file}"
        dst = f"{HOME}{file}"
        if os.path.islink(dst):
            print(f"{dst} already exist")
        else:
            print(f"link {dst} -> {src}")
            os.symlink(src, dst)
