-- CreateTable
CREATE TABLE `person` (
    `personId` VARCHAR(191) NOT NULL,
    `citizenId` VARCHAR(20) NOT NULL,
    `Fname` VARCHAR(25) NOT NULL DEFAULT 'smith',

    UNIQUE INDEX `person_un`(`citizenId`),
    PRIMARY KEY (`personId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `staff` (
    `staffId` INTEGER NOT NULL AUTO_INCREMENT,
    `citizenId` VARCHAR(20) NOT NULL,

    UNIQUE INDEX `staff_un`(`citizenId`),
    PRIMARY KEY (`staffId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user` (
    `userId` INTEGER NOT NULL AUTO_INCREMENT,
    `citizenId` VARCHAR(20) NOT NULL,

    UNIQUE INDEX `user_un`(`citizenId`),
    PRIMARY KEY (`userId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
