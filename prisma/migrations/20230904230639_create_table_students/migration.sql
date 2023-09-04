/*
  Warnings:

  - You are about to drop the column `email` on the `teachers` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `teachers` table. All the data in the column will be lost.
  - Added the required column `telephone` to the `students` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name_teacher` to the `teachers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "students" ADD COLUMN     "telephone" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "teachers" DROP COLUMN "email",
DROP COLUMN "name",
ADD COLUMN     "name_teacher" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "subjects" (
    "id" TEXT NOT NULL,
    "course_name" TEXT NOT NULL,
    "workload" TEXT NOT NULL,

    CONSTRAINT "subjects_pkey" PRIMARY KEY ("id")
);
