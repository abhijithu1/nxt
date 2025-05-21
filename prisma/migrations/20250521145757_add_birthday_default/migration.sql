/*
  Warnings:

  - You are about to drop the `_ClassToGrade` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `gradeId` to the `Class` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_ClassToGrade" DROP CONSTRAINT "_ClassToGrade_A_fkey";

-- DropForeignKey
ALTER TABLE "_ClassToGrade" DROP CONSTRAINT "_ClassToGrade_B_fkey";

-- AlterTable
ALTER TABLE "Class" ADD COLUMN     "gradeId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Student" ADD COLUMN     "birthday" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "phone" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Teacher" ADD COLUMN     "birthday" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "phone" DROP NOT NULL;

-- DropTable
DROP TABLE "_ClassToGrade";

-- AddForeignKey
ALTER TABLE "Class" ADD CONSTRAINT "Class_gradeId_fkey" FOREIGN KEY ("gradeId") REFERENCES "Grade"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
