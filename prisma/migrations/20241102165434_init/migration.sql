-- CreateTable
CREATE TABLE `User` (
    `idUser` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `psw` VARCHAR(191) NOT NULL,
    `start_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `User_email_key`(`email`),
    PRIMARY KEY (`idUser`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Task` (
    `idTask` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `priority` VARCHAR(191) NOT NULL,
    `descrip` VARCHAR(191) NOT NULL,
    `status` INTEGER NOT NULL,
    `idUser` INTEGER NOT NULL,

    PRIMARY KEY (`idTask`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Activities` (
    `idActivities` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `start_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `end_time` DATETIME(3) NOT NULL,
    `status` INTEGER NOT NULL,
    `idTask` INTEGER NOT NULL,
    `desc` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`idActivities`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Task` ADD CONSTRAINT `Task_idUser_fkey` FOREIGN KEY (`idUser`) REFERENCES `User`(`idUser`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Activities` ADD CONSTRAINT `Activities_idTask_fkey` FOREIGN KEY (`idTask`) REFERENCES `Task`(`idTask`) ON DELETE RESTRICT ON UPDATE CASCADE;
