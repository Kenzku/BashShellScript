# Your personal soccer expert
# usage: wm

cat << EOF
Enter the name of the country you think will be worldchampion soccer in 2018. Be aware that the name of the country you enter needs to start with an uppercase letter.
EOF

read COUNTRY

case $COUNTRY in
     Nederland | Holland | Netherlands)
     echo "hahaha you must be joking"
     ;;
     Italy | Deutschland | Germany | Mannschaft)
     echo "No, they are the worst team on earth"
     ;;
     England)
     echo "yeah, you're an expert"
     ;;
     *)
     echo "Huh? Do they play also?"
     ;;
esac
