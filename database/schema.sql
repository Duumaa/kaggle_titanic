CREATE TABLE IF NOT EXISTS "gender_submission" (
    "PassengerId" INTEGER PRIMARY KEY,
    "Survived" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS "train" (
    "PassengerId" INTEGER PRIMARY KEY,
    "Survived" INTEGER NOT NULL,
    "Pclass" INTEGER NOT NULL,
    "Name" TEXT NOT NULL,
    "Sex" TEXT NOT NULL,
    "Age" REAL,
    "SibSp" INTEGER NOT NULL,
    "Parch" INTEGER NOT NULL,
    "Ticket" TEXT,
    "Fare" REAL,
    "Cabin" TEXT,
    "Embarked" TEXT
);

CREATE TABLE IF NOT EXISTS "test" (
    "PassengerId" INTEGER PRIMARY KEY,
    "Pclass" INTEGER NOT NULL,
    "Name" TEXT NOT NULL,
    "Sex" TEXT NOT NULL,
    "Age" REAL,
    "SibSp" INTEGER NOT NULL,
    "Parch" INTEGER NOT NULL,
    "Ticket" TEXT,
    "Fare" REAL,
    "Cabin" TEXT,
    "Embarked" TEXT
);