# coding-test
Simple Coding Test  
After test, Dev team will interview how you design and develop.  
Please leave your plan, design, develop history to explain.  

---
# For Web/Server Developer

## 1. Website Crawler
### Goal
- Crawl and save [HackerNews](https://news.ycombinator.com/) posts.

### Constraints
- Result should be ordered.
- Result should have title and post origin link.

### Optional Features
- Visit origin link and get post and save into files.

## 2. TODO List
### Goal
- User can view current todo list.
- User can add new todo list.
- User can edit/delete existing todo list.

### Constraints
- Todo list items are in reverse-time order.
- Newly added todo list should be in right place.

### Optional Features
- User can add comment to each todo list.

## 3. Board with Comment
### Goal
- User can write post to board.
- User can hide/show own post.
- User can see shown post list.
- User can add comment to any shown post.

### Constraints
- User can add comment on existing comment. (N-depth hierarchical)

### Optional Features
- User can see own post list in mypage.

---
# For Android/iOS Developer
## 1. Stopwatch
### Goal
- User can start/stop/reset stopwatch.
- User can record lap time while stopwatch is running.
- User can pause/resume stopwatch.

### Constraints
- Saved lap times are in reverse order.
- Reset button is active only when stopwatch is in stop/pause state.

### Optional Features
- User can save whole lap times to csv file.
- User can delete selected lap times.
- User can add label to each lap time.

## 2. TODO list
### Goal
- User can view current todo list.
- User can add new todo list item.
- User can edit existing todo list item.

### Constraints
- Todo list items are in reverse-time order.
- Newly added todo list item should be in right place.

### Optional Features
- Save todo list using local db like [sqlite](https://www.sqlite.org/index.html) or [realm](https://realm.io/kr)
- User can add comment to each todo list item.
- User can check/delete todo list using left/right swipe action.
