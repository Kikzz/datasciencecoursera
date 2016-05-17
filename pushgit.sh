#### select branch ####

echo "\nType which branch are you workin on\n"
# list branches
# git fetch origin
git branch -a

#get user input
read branch

#switch to branch
git checkout $branch

#### Add to local repo ####

echo "\nAdd to local Git Repository\n"

echo "New files only? [1]"
echo "Updates only? [2]"
echo "Both? [3]"
echo "Nah [any other key]\n"

read scope

case $scope in
	1) echo "git add .\n"
		git add .
	;;
    2) echo "git add -u\n"
		git add -u
	;;
    3) echo "git add -A\n"
		git add -A
	;;
   *) echo "Nothing added to local Repository\n";;
esac

####commit local repo ####

echo "\ndo you want to commit?  (y/n)\n"

read commit

case $commit in
	y )
		echo "Enter your commit message"
		read commitmsg
		echo "\ncommitting to git\n"
		git commit -m "$commitmsg"
	;;
	*) 
		"\not doing anything. Push might not update anything on github\n";;
esac


#### push to github ####
echo "\nPush $branch branch to GitHub? (y/n)\n"

read pushgit

case $pushgit in
	y )
	echo "Pushing to $branch\n"
	git push 
	;;
	* )
    echo "Not doing anything. Have a nice day!\n";;
esac

