# han

_A personal tool for keeping track of solo projects_

## purpose

Han provides a central location to keep track of personal projects.
It allows the user to input new project ideas, list projects, adjust the status of projects, hold meta project information, and generate a public-facing dashboard/directory.

## design
```domo
User.name : String
User.email : String
User.projects : Array(Project)

Project.user : User
Project.name : String
Project.stage : Stage
Project.source_link : String
Project.homepage_link : String
Project.description : String
Project.tasks : Array(Tasks)

Task.project : Project
Task.description : String
Task.status : Status

Stage : Inbox | Unreleased | Active | Backburner | Archived
Status : Inbox | In Progress | Finished | Backburner | Archived
```

## style guide

Despite it not matching standard Ruby style, this project will primarily use Tab-based indentation. That means that any pull requests that have spaces to the left of the left-most non-whitespace character will not be merged in.

## local development
```
git clone git@github.com:Willamin/han.git
bundle install

rails s
```
