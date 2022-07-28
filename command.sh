# Commandds used in steps 1-8

# Create react app
npx create-react-app blackbird-propeller
cd blackbird-propeller

# Create repo and checkout to new branch called "update_logo"
gh repo create
gh checkout -b update_logo

# Make changes to logo and link
sed -i "" 's|img src={logo}|img src="https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg"|g' src/App.js
sed -i "" 's|href="https://reactjs.org"|href="https://www.propelleraero.com/dirtmate/"|g' src/App

# Commit and push changes
git add .
git commit -m "Replace logo and link"
git push origin update_logo

# Create and merge PR
gh pr create --title "Update Logo" --body "Updating logo and link"
gh pr merge

# REPO_URL: https://github.com/Sulaiman451/blackbird-propeller