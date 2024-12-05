This is a shell script used to initialize my new personal Mac.
# How to use
1. Download this repository.
2. Run `./index.sh`
# How to update the shell script
You typically don’t need to update `index.sh` directly, as it is generated by [Amber](https://amber-lang.com/) from `index.ab`.
If you want to customize the shell script, update the `index.ab` file instead. Its content is easier to read and modify compared to the shell script. Then, you can run `amber index.ab` or `amber index.ab index.sh` to generate a new shell script.