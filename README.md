# USE IMPROVED SCRIPT: [eggplants/gh-repos](https://github.com/eggplants/gh-repos)

---

# gh-matome

Script to retrieve a list of repositories for a given GitHub user for [gh](https://github.com/cli/cli).

## Install

```bash
gh extension install eggplants/gh-matome
```

## Run

```bash
gh matome <gh-username>
```

## Example

```txt
$ matome god
[+]: Target user: god
[+]: Repo count: 7
[+]: Page: [1/1]
[+]: Created: /home/eggplants/prog/matome/data_god_2021-09-06_20-30-40.json
$ jq . *god*.json
```

```json
[
  {
    "archived": false,
    "created_at": "2011-08-23T09:19:22Z",
    "description": "Ruby on Rails",
    "fork": true,
    "forks_count": 2,
    "full_name": "god/rails",
    "id": 2254153,
    "language": "Ruby",
    "size": 59415,
    "stargazers_count": 8,
    "updated_at": "2020-06-18T10:35:26Z"
  },
  {
    "archived": false,
    "created_at": "2014-02-06T22:43:45Z",
    "description": null,
    "fork": false,
    "forks_count": 10,
    "full_name": "god/light",
    "id": 16596702,
    "language": "JavaScript",
    "size": 2,
    "stargazers_count": 42,
    "updated_at": "2021-07-20T07:41:29Z"
  },
  {
    "archived": false,
    "created_at": "2014-02-07T19:50:44Z",
    "description": null,
    "fork": false,
    "forks_count": 3,
    "full_name": "god/water",
    "id": 16625596,
    "language": null,
    "size": 120,
    "stargazers_count": 5,
    "updated_at": "2021-04-23T06:40:12Z"
  },
  {
    "archived": false,
    "created_at": "2014-02-09T02:31:02Z",
    "description": null,
    "fork": false,
    "forks_count": 10,
    "full_name": "god/earth",
    "id": 16658187,
    "language": "Python",
    "size": 6,
    "stargazers_count": 42,
    "updated_at": "2021-06-30T10:14:30Z"
  },
  {
    "archived": false,
    "created_at": "2014-02-10T22:35:36Z",
    "description": null,
    "fork": false,
    "forks_count": 4,
    "full_name": "god/solar_system",
    "id": 16711749,
    "language": null,
    "size": 120,
    "stargazers_count": 7,
    "updated_at": "2021-04-23T03:57:10Z"
  },
  {
    "archived": false,
    "created_at": "2014-02-11T23:17:14Z",
    "description": null,
    "fork": false,
    "forks_count": 6,
    "full_name": "god/animals",
    "id": 16749203,
    "language": null,
    "size": 120,
    "stargazers_count": 11,
    "updated_at": "2021-04-23T03:57:04Z"
  },
  {
    "archived": false,
    "created_at": "2014-02-13T04:07:02Z",
    "description": null,
    "fork": false,
    "forks_count": 20,
    "full_name": "god/man",
    "id": 16791337,
    "language": null,
    "size": 5,
    "stargazers_count": 153,
    "updated_at": "2021-08-22T10:29:54Z"
  }
]
```
