// import { promises as fs } from "fs"
// import path from "path"
// import { Metadata } from "next"
// import Image from "next/image"
// import { z } from "zod"

// import { columns } from "./components/columns"
// import { DataTable } from "./components/data-table"
import UserNav from "@/components/custom/UserNav"
import HomeLayout from "@/views/home/layout"
import { type Post } from "@/views/home/post.d"
import { Home } from "lucide-react"
// import { taskSchema } from "./data/schema"

// export const metadata: Metadata = {
//   title: "Tasks",
//   description: "A task and issue tracker build using Tanstack Table.",
// }

// Simulate a database read for tasks.
// async function getTasks() {
//   const data = await fs.readFile(
//     path.join(process.cwd(), "app/(app)/examples/tasks/data/tasks.json")
//   )

//   const tasks = JSON.parse(data.toString())

//   return z.array(taskSchema).parse(tasks)
// }
interface HomeIndexProps {
  posts: Post[]
  defaultLayout: number[] | undefined
  defaultCollapsed?: boolean
}

export default function HomeIndex({
  posts,
  // defaultLayout = [265, 440, 655],
  defaultLayout = [440, 920],
  defaultCollapsed = false,
}: HomeIndexProps) {
  // const tasks = await getTasks()

  return (
    <>
      <div className="hidden h-full flex-1 flex-col space-y-8 p-8 md:flex">
        <div className="flex items-center justify-between space-y-2">
          <div>
            <h2 className="text-2xl font-bold tracking-tight">
              새로운 소식
            </h2>
            <p className="text-muted-foreground">
              IT / 과학 관련 뉴스를 다룹니다.
            </p>
          </div>
          {/* <div className="flex items-center space-x-2">
            <UserNav />
          </div> */}
        </div>
        {/* <DataTable data={tasks} columns={columns} /> */}

        <div className="overflow-hidden rounded-lg border bg-background shadow-md md:shadow-md">
          <HomeLayout
            posts={posts}
            defaultLayout={defaultLayout}
            defaultCollapsed={defaultCollapsed}
          />
        </div>

      </div>
    </>
  )
}
