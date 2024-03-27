export const posts = [
  {
    id: "6c84fb90-12c4-11e1-840d-7b25c5ee775a",
    username: "William Smith",
    title: "Meeting Tomorrow",
    body: "Hi, let's have a meeting tomorrow to discuss the project. I've been reviewing the project details and have some ideas I'd like to share. It's crucial that we align on our next steps to ensure the project's success.\n\nPlease come prepared with any questions or insights you may have. Looking forward to our meeting!\n\nBest regards, William",
    createdAt: "2023-10-22T09:00:00",
  },
]

export type Post = (typeof posts)[number]
