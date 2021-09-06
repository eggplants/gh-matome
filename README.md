# matome-gh

Script to retrieve a list of repositories for a given GitHub user for [gh](https://github.com/cli/cli).

## Install

```bash
gh extension eggplants/gh-matome
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
[+]: Created: /home/eggplants/prog/matome/data_god_2021-09-06_19-54-49.json
$ jq . *god*.json
[
  {
    "full_name": "god/rails",
    "fork": true,
    "description": "Ruby on Rails",
    "created_at": "2011-08-23T09:19:22Z",
    "updated_at": "2020-06-18T10:35:26Z"
  },
  {
    "full_name": "god/light",
    "fork": false,
    "description": null,
    "created_at": "2014-02-06T22:43:45Z",
    "updated_at": "2021-07-20T07:41:29Z"
  },
  {
    "full_name": "god/water",
    "fork": false,
    "description": null,
    "created_at": "2014-02-07T19:50:44Z",
    "updated_at": "2021-04-23T06:40:12Z"
  },
  {
    "full_name": "god/earth",
    "fork": false,
    "description": null,
    "created_at": "2014-02-09T02:31:02Z",
    "updated_at": "2021-06-30T10:14:30Z"
  },
  {
    "full_name": "god/solar_system",
    "fork": false,
    "description": null,
    "created_at": "2014-02-10T22:35:36Z",
    "updated_at": "2021-04-23T03:57:10Z"
  },
  {
    "full_name": "god/animals",
    "fork": false,
    "description": null,
    "created_at": "2014-02-11T23:17:14Z",
    "updated_at": "2021-04-23T03:57:04Z"
  },
  {
    "full_name": "god/man",
    "fork": false,
    "description": null,
    "created_at": "2014-02-13T04:07:02Z",
    "updated_at": "2021-08-22T10:29:54Z"
  }
]
```
