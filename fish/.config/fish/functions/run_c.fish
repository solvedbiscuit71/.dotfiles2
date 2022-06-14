function run_c
  set -l options (fish_opt -s g -l debug)
  argparse $options -- $argv

  if set -q _flag_debug
    clang++ -std=c++17 "$argv[1]" -g

    if [ $status = "0" ]
      lldb ./a.out
      rm a.out; rm -r a.out.dSYM
    end
  else
    clang++ -std=c++17 "$argv[1]"

    if [ $status = "0" ]
      ./a.out;
      rm a.out
    end
  end
end
