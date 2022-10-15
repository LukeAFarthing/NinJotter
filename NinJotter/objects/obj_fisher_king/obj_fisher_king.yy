{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_fisher_king",
  "spriteId": {
    "name": "spr_fisher_king_walking",
    "path": "sprites/spr_fisher_king_walking/spr_fisher_king_walking.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_platypus",
    "path": "objects/obj_platypus/obj_platypus.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_marker","path":"objects/obj_marker/obj_marker.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"sense_distance_net","varType":0,"value":"1500","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"sense_distance","path":"objects/obj_platypus/obj_platypus.yy",},"objectId":{"name":"obj_platypus","path":"objects/obj_platypus/obj_platypus.yy",},"value":"100",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
}