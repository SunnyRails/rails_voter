CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "rails_voter_elections" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "rails_voter_voting_results" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "election_detail_id" integer);
CREATE INDEX "index_rails_voter_voting_results_on_election_detail_id" ON "rails_voter_voting_results" ("election_detail_id");
CREATE TABLE "rails_voter_election_details" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "election_id" integer);
CREATE INDEX "index_rails_voter_election_details_on_election_id" ON "rails_voter_election_details" ("election_id");
INSERT INTO schema_migrations (version) VALUES ('20160804125926');

INSERT INTO schema_migrations (version) VALUES ('20160804125927');

INSERT INTO schema_migrations (version) VALUES ('20160804125928');

INSERT INTO schema_migrations (version) VALUES ('20160804125929');

INSERT INTO schema_migrations (version) VALUES ('20160804125930');

INSERT INTO schema_migrations (version) VALUES ('20160804125931');

INSERT INTO schema_migrations (version) VALUES ('20160804125932');

INSERT INTO schema_migrations (version) VALUES ('20160804125933');

INSERT INTO schema_migrations (version) VALUES ('20160804125934');

