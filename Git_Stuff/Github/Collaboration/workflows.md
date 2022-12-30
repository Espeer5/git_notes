# Github Collab Workflows
- Centralized:
    - Everyone clones the same branch and repo, and pushes to the same branch and repo
        * This is terrible!
        * Any time we want to push/pull, we have to update our branch and resolve a ton of merge conflicts
        * If a user wants to share or discuss their work with other team members, they have to integrate their (problematic!) work with the main branch! __BAD__
        * Of course, this is usually fine if you aren't collaborating with anyone
- Feature Branch Workflow
    - Each new feature is built on its own feature branch
    - The main branch is left as the official record of the project - anything put into the main is a new release
    - This allows a company to create an official review mechanism before new features get merged into the main branch:

