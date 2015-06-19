# Don't convert CRLF
git config --global system.autocrlf false

# Don't mark diffs with ^M
git config --global core.whitespace cr-at-eol

# git ls - shows one-line status for all modified files
git config --global alias.ls 'status --short --branch'

# git last - shows only last commit
git config --global alias.last 'log -1'

# git history - shows decorated log
git config --global alias.history 'log --all --decorate --graph --pretty=format:"%C(auto)%h %s %d%C(reset)"'

# git pending - shows what is pending push toward origin
git config --global alias.pending 'log master ^origin/master'

# git recommit - take currently staged files and recommit it under previous commit.
git config --global alias.recommit 'commit --amend --reuse-message=HEAD'
