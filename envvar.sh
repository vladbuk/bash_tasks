#!/bin/bash

homework="$(pwd)/homework"
mkdir -p $homework
export SURNAME="Surname"
env | grep SURNAME

cat <<EOF > $homework/print_envvars.sh
#!/bin/bash
printenv SURNAME
EOF

chmod +x $homework/print_envvars.sh
export PATH=$PATH:$homework
bash -c "print_envvars.sh"
