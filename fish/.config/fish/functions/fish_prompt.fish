function fish_prompt
    set -l __last_command_exit_status $status

    if not set -q -g __fish_prompt_utils_defined
        set -g __fish_prompt_utils_defined
        function _is_git_repo
            type -q git
            or return 1
            git rev-parse --git-dir >/dev/null 2>&1
        end

        function _git_branch_name
            set -l branch (git symbolic-ref --quiet HEAD 2>/dev/null)
            if set -q branch[1]
                echo (string replace -r '^refs/heads/' '' $branch)
            else
                echo (git rev-parse --short HEAD 2>/dev/null)
            end
        end
    end

    set -l blue (set_color -o blue)
    set -l cyan (set_color -o cyan)
    set -l normal (set_color normal)

    set -l arrow '$'
    set -l cwd (basename (prompt_pwd))

    set -l repo_info
    if _is_git_repo
        set -l repo_branch (_git_branch_name)
        set repo_info "($repo_branch) "
    end

    echo -n -s $cyan $cwd ' '$blue $repo_info $normal $arrow ' '
end
