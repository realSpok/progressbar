# progressbar
A simple bash progress bar to be used in bash scripts
This implements a couple features that I have not seens anywhere else (wich is why I made it): 
This bar remains on the top right hand corner of your shell, not interfering with your regular shell output with echo
It displays 2 decimal places for the percentage of completion, which is handy for longer scripts

# H1 how to use 
add progress to your PATH
in your script, pass the following 
```bash
progress $k $total
```

with $k your local iterative variable and $total the target number of iterations of the script

this script will display a bar on the top right corner of your shell, with the remaning percentage and a fancy progress bar

# H1 Example
# H2 Script implementing the bar

```bash
#!/bin/bash
_start=1
_end=100

for number in $(seq ${_start} ${_end})
do
    sleep 0.1
    echo "testing with "
    progress ${number} ${_end}
done
```
# H2 Output

```bash
(ins)spok:Work/progressbar$ ./test.sh                                                                                                                 Progress : [###-------] 36.00%
```

# H1 Sources 

*tldp.org/HOWTO/Bash-Prompt-HOWTO/clockt.html
*https://github.com/fearside/ProgressBar/

