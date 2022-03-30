# Warmup

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
The purpose of this app is to bring fellow gym goers to work out together based on their stats, plans and preferences.

### App Evaluation
- **Category:** Social / Health
- **Mobile:**  Mobile only app
- **Story:** Allows users to find other users with similar stats from the gym to accopany them to a gym session.
- **Market:** Anyone that enjoys going to the gym can use this app. With the ability to meet other gym goers based on stats, no matter how unique your Personal Records are and schudules.
- **Habit:** Users can swipe/ chose someone else who they believe they can work out equal with and can message eachother if they are matched.
- **Scope:** Start off just finding fellow users to go to gym with. Then we can grow the features as the platform grows to make it even more interactive.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can register 
* User can login & logout
* User can see user profile 
* User can match based preference (Years of experience....)
* User can create a profile 
* User can edit profile and preferences
* User can chat with matched people 

**Optional Nice-to-have Stories**

* User can chat with unmatched people 
* User can have friends list
* User can post pictures and videos
* User can have chat logs
* User can have favorite exercise

### 2. Screen Archetypes

* Login Screen
   * User can login
* Registration Screen
   * User can create a new account
* Profile and Preference Screen
   * User can edit their own profiles and stats
* Match Screen
   * User can swipe left or right based on profiles
* Chat Screen
   * User can chat to their matched profiles
   * Have list of chatted to people

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Profile Screen
* Setting Screen
* Matching Screen

**Flow Navigation** (Screen to Screen)

* Forced Login
* List of all Chat screen
* Settings and preferences
   * Chat screen
* Tap on Matched person
   * Can see their stats, videos, pictures



## Wireframes

<img src="https://i.imgur.com/rGaxHfL.png" height=200>


## Schema 
### Models
#### Post

| Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the user post (default field) |
   | author        | Pointer to User| image author |
   | image         | File     | image that user posts |
   | caption       | String   | image caption by author |
   | commentsCount | Number   | number of comments that has been posted to an image |
   | likesCount    | Number   | number of likes for the post |
   | createdAt     | DateTime | date when post is created (default field) |
   | updatedAt     | DateTime | date when post is last updated (default field) |

### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
