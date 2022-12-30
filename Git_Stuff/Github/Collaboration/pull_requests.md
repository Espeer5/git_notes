# Pull Requests - An Approval Mechanism for Changes
- These are features built into Git storage tools like Github or Gitlab, not a Git feature
- Pull requests alert team members that new work is ready to be reviewed for merging into the main branch
- These allow us to provide a description, and setup the official approval mechanism so that companies can organize how anything gets merged into the main branch
- Fixing merge conflicts in a pull request!
    * If we have a conflict, then we should do the following:
        1. Merge the main branch __into__ the branch we are editing and fix the conflicts there
        2. Now, there will be no more conflicts so we can merge this new, edited branch into main
- Pull requests are enforced by the branch protections section on Github