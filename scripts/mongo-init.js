db = db.getSiblingDB('quantumgrid');
db.createUser({
  user: "quantumgrid",
  pwd: "P4ssword!",
  roles: [
    { role: "readWrite", db: "quantumgrid" }
  ]
});

db = db.getSiblingDB('fileservice');
db.createUser({
  user: "fileservice",
  pwd: "P4ssword!",
  roles: [
    { role: "readWrite", db: "fileservice" }
  ]
});

db = db.getSiblingDB('emailservice');
db.createUser({
  user: "emailservice",
  pwd: "P4ssword!",
  roles: [
    { role: "readWrite", db: "emailservice" }
  ]
});

print("MongoDB initial setup with multiple users and databases is complete.");
