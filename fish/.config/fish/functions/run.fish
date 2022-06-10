function run
  set -l options (fish_opt -s g -l debug)
  argparse $options -- $argv

  if set -q _flag_debug
    clang++ "$argv[1]" -g 2> /dev/null

    if [ $status = "0" ]
      lldb ./a.out
      rm a.out; rm -r a.out.dSYM
    end
  else
    clang++ "$argv[1]" 2> /dev/null

    if [ $status = "0" ]
      ./a.out;
      rm a.out
    end
  end
end
