#! /bin/sh
# Not actually working
umask 077

PERSON=/tmp/pd.key.person.$$
OFFICE=/tmp/pd.key.office.$$
TELEPHONE=/tmp/pd.key.telephone.$$
USERS=/tmp/pd.key.user.$$

#trap "exit 1"
#trap "rm -f $PERSON $TELEPHONE $USER" EXIT

awk -F { print $1 ":" $5 }' > $USER
sed -e 's=/.*==' \
	-e 's=^\([^:]*\):\(.*\) \([^ ]*\)=\1:\3, \2=' < $USER | sort > $PERSON
