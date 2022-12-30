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
- Fork and Clone Workflow
    - This is used when there are a large number of collaborators
    - Forking is a Github feature that creates a personal copy of someone else's repo
    - Therefore anyone trying to make changes has their very own upstream that they are able to push to, but they can also pull in new changes from the official repo
        * Then, if the user wants to make their merge, they must ask permission to do so from the owner of the official repo
    - __Benefit__: the maintainer of the repo does not need to manually add collaborators

