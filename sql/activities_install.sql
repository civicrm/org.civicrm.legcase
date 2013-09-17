SELECT @caseCompId := id FROM `civicrm_component` where `name` like 'CiviCase';
SELECT @option_group_id_activity_type        := max(id) from civicrm_option_group where name = 'activity_type';
SELECT @max_val := MAX(ROUND(op.value)) FROM civicrm_option_value op WHERE op.option_group_id  =
   @option_group_id_activity_type;

INSERT INTO
   `civicrm_option_value` (`option_group_id`, `label`,`name`, `value`,  `grouping`, `filter`, `is_default`,
   `weight`, `description`, `is_optgroup`, `is_reserved`, `is_active`, `component_id` )
VALUES

(@option_group_id_activity_type, 'Accept Invitation','Accept Invitation',
  (SELECT @max_val := @max_val+1), NULL, 0,  0, (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Assembly Support','Assembly Support',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Constituent Event Participation','Constituent Event Participation',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Coordination with Event Organizer','Coordination with Event Organizer',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Email Received','Email Received',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Email Sent','Email Sent',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Executive Support','Executive Support',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Fax Received','Fax Received',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Fax Sent','Fax Sent',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'In Person','In Person',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Letter Received','Letter Received',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Letter Sent','Letter Sent',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Link Cases','Link Cases',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Local Government Contact','Local Government Contact',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Other','Other',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Phone Call Received','Phone Call Received',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Receive Event Invitation','Receive Event Invitation',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Record SSN','Record SSN',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Reject Invitation','Reject Invitation',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Senate Support','Senate Support',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'State Agency Support','State Agency Support',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId ),
(@option_group_id_activity_type, 'Supervisor Review','Supervisor Review',
  (SELECT @max_val := @max_val+1), NULL, 0,  0,  (SELECT @max_val := @max_val+1), '',  0, 0, 1, @caseCompId );
