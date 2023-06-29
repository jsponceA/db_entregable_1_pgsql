Table "users" {
  "id" bigserial [pk, not null, increment]
  "role_id" bigint [not null]
  "name" "character varying(100)" [not null]
  "email" "character varying(100)" [not null]
  "password" "character varying(255)" [not null]
  "age" integer [not null]
}

Table "courses" {
  "id" bigserial [pk, not null, increment]
  "course_level_id" bigint [not null]
  "title" "character varying(255)" [not null]
  "description" "character varying(500)"
  "teacher" "character varying(255)" [not null]
}

Table "course_video" {
  "id" bigserial [not null, increment]
  "course_id" bigint [pk, not null]
  "title" "character varying(255)" [not null]
  "url" "character varying(255)" [not null]
}

Table "categories" {
  "id" bigserial [pk, not null, increment]
  "name" "character varying(100)" [not null]
}

Table "roles" {
  "id" bigserial [pk, not null, increment]
  "name" "character varying(100)"
}

Table "course_level" {
  "id" bigserial [pk, not null, increment]
  "name" "character varying(100)" [not null]
}

Table "course_categorie" {
  "course_id" bigserial [not null, increment]
  "category_id" bigserial [not null, increment]
}

Table "courses_users" {
  "courses_id" bigserial [not null, increment]
  "users_id" bigserial [not null, increment]
}

Ref:"roles"."id" < "users"."role_id" [update: no action, delete: no action]

Ref:"course_level"."id" < "courses"."course_level_id" [update: no action, delete: no action]

Ref:"courses"."id" < "course_video"."course_id" [update: no action, delete: no action]

Ref:"courses"."id" < "course_categorie"."course_id" [update: no action, delete: no action]

Ref:"categories"."id" < "course_categorie"."category_id" [update: no action, delete: no action]

Ref:"courses"."id" < "courses_users"."courses_id" [update: no action, delete: no action]

Ref:"users"."id" < "courses_users"."users_id" [update: no action, delete: no action]
