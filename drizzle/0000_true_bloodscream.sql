CREATE TABLE `courses` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`owner` text NOT NULL,
	`code` text NOT NULL,
	`title` text NOT NULL,
	`department` text NOT NULL,
	`credits` integer NOT NULL,
	`days` integer NOT NULL,
	`start_minute` integer NOT NULL,
	`end_minute` integer NOT NULL,
	`instructor` text NOT NULL,
	`room` text NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `owner_code` ON `courses` (`owner`,`code`);--> statement-breakpoint
CREATE TABLE `enrollments` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`owner` text NOT NULL,
	`course_id` integer NOT NULL,
	`created_at` text NOT NULL,
	FOREIGN KEY (`course_id`) REFERENCES `courses`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `owner_course` ON `enrollments` (`owner`,`course_id`);