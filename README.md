### KillBom ###

Pre-commit hook intended to remove UTF-8 BOM characters from any commited file.

Script changes only files beginning with 0xEF, 0xBB, 0xBF and any changed file
is re-staged before actual commit.

After all files are processed, final check is made whether anything is
available for commit. If there are no files in staging area, current commit
will be terminated and new commit will be started with --no-verify option.
Reason for this is so that standard commit message can be written in cases when
removal of UTF-8 BOM results in no actual files to commit.
