
# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

awk

begin {
   FS = "\t"
   pokemon = 0;
   averagehp = 0;
   attack = 0;
}
{
   if(NR>1) {
     pokemon = pokemon + 1;
     
     averagehp = averagehp + $6;
     attack = attack + $7;
   }


}

END {
   averagehp = averagehp / pokemon;
   attack = attack / pokemon;

   print "===== SUMMARY OF DATA FILE ====="
   print "File name: " ARGV[1]
   print "Total Pokemon: " pokemon
   print "Avg. HP: " averagehp
   print "Avg. Attack: " attack
   print "===== END SUMMARY =====

}