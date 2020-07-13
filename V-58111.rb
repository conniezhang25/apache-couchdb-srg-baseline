# encoding: UTF-8

control 'V-58111' do
  title "The DBMS must generate audit records showing starting and ending time
for user access to the database(s)."
  desc  "For completeness of forensic analysis, it is necessary to know how
long a user's (or other principal's) connection to the DBMS lasts. This can be
achieved by recording disconnections, in addition to logons/connections, in the
audit logs.

    Disconnection may be initiated by the user or forced by the system (as in a
timeout) or result from a system or network failure. To the greatest extent
possible, all disconnections must be logged.
  "
  desc  'rationale', ''
  desc  'check', "Review the DBMS audit settings. If an audit record is not
generated each time a user (or other principal) logs off or disconnects from
the DBMS voluntarily, or forced by the system, or because of connection or
other failure, this is a finding."
  desc  'fix', "
    Configure DBMS audit settings to generate an audit record each time a user
(or other principal) logs off or disconnects, whether voluntarily or forced by
the system, or because of connection or other failure, from the DBMS.

    Ensure that the audit record contains the time of the event, the user ID,
and session identifier.
  "
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000505-DB-000352'
  tag gid: 'V-58111'
  tag rid: 'SV-72541r1_rule'
  tag stig_id: 'SRG-APP-000505-DB-000352'
  tag fix_id: 'F-63319r1_fix'
  tag cci: ['CCI-000172']
  tag nist: ['AU-12 c']
end

