CREATE INDEX "enrollments_index_search"
ON "enrollments" ("student_id");

CREATE INDEX "courses_index_search"
ON "courses" ("department", "number", "semester", "title");

CREATE INDEX "requirements_index_search"
ON "requirements" ("name");


