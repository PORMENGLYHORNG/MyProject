git add .
echo "Please enter commit message ="
read message
git commit -m "$message"
git push origin main