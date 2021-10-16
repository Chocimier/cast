# Outcome

Runs shell script (with arguments) specified in arguments as
some unprivileged user.

# Arguments

Shell script with arguments to run.

# Example usage

./120-run-unprivileged job.sh -p 10 "$(mktemp -d)"

# Bugs

It should run command rather than shell script, but that requires
runuser's -u **and** --login, what is not allowed.
Please let me know if you find a way to run
- arbitrary command (like runuser -u)
- with $HOME etc. set properly (like runuser -l)
- with arguments that can contain whitespace (unlike sh -c)
