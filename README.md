# family-tree
A project seeking to give individuals the opportunity to host their own family tree website.

## Setup
This project is designed for you to host yourself. I recommend using [Heroku](https://heroku.com) for this and the readme will assume you are, but the instructions should be transferrable to other hosting platforms. PRs welcome to improve this!

### Variables

#### Production
Some default variables will need to change when you run the container in a production environment. You can change these via the host UI ([Heroku](https://devcenter.heroku.com/articles/config-vars)).

| Value  | Description |
| ------------- | ------------- |
| HOST_URL  | The host for your app. eg 'my-family-tree.herokuapp.com'  |
| FAMILY_NAME  | A family name for your tree. Defaults to 'Smith'.  |

#### Pipeline
If you fork this repo and want to keep the GitHub Actions working, you'll need to set these in `Settings > Secrets` in your repo:

| Value  | Description |
| ------------- | ------------- |
| HEROKU_APP_NAME  | The name of your app, eg 'my-family-tree'  |
| HEROKU_API_KEY  | The API key for your Heroku account, can be found on [this](https://dashboard.heroku.com/account) page  |
| HEROKU_POSTGRESQL_SILVER_URL  | (optional) A connection URI for a remote test database, used in GitHub Action  |
