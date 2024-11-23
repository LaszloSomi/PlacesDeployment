## Requirement: Use Windows PowerShell 7
## Connecting to Exchange & Places
Connect-ExchangeOnline
Connect-MicrosoftPlaces

#######Workspaces

New-Mailbox -Room -Alias "wksp-hq-2.160" -Name "Workspace HQ/2.160" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-2.100" -Name "Workspace HQ/2.100" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-2.200" -Name "Workspace HQ/2.200" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-2.250" -Name "Workspace HQ/2.250" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-2.400" -Name "Workspace HQ/2.400" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-2.450" -Name "Workspace HQ/2.450" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-2.370" -Name "Workspace HQ/2.370" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-2.300" -Name "Workspace HQ/2.300" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-1.200" -Name "Workspace HQ/1.200" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-1.100" -Name "Workspace HQ/1.100" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-1.250" -Name "Workspace HQ/1.250" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-1.300" -Name "Workspace HQ/1.300" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-1.400" -Name "Workspace HQ/1.400" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-1.360" -Name "Workspace HQ/1.360" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-1.450" -Name "Workspace HQ/1.450" | Set-Mailbox -Type Workspace
New-Mailbox -Room -Alias "wksp-hq-1.160" -Name "Workspace HQ/1.160" | Set-Mailbox -Type Workspace


Set-MailboxCalendarConfiguration -Identity "wksp-hq-2.160" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-2.100" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-2.200" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-2.250" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-2.400" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-2.450" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-2.370" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-2.300" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-1.200" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-1.100" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-1.250" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-1.300" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-1.400" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-1.360" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-1.450" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00
Set-MailboxCalendarConfiguration -Identity "wksp-hq-1.160" -WorkingHoursTimeZone "Pacific Standard Time" -WorkingHoursStartTime 09:00:00


Set-CalendarProcessing -Identity "wksp-hq-2.160" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-2.100" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-2.200" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-2.250" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-2.400" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-2.450" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-2.370" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-2.300" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-1.200" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-1.100" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-1.250" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-1.300" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-1.400" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-1.360" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-1.450" -EnforceCapacity $True -AllowConflicts $true
Set-CalendarProcessing -Identity "wksp-hq-1.160" -EnforceCapacity $True -AllowConflicts $true


#####Rooms

New-Mailbox -Room -Alias "ConfRm-HQ-2.238" -Name "ConfRm HQ/2.238"
New-Mailbox -Room -Alias "ConfRm-HQ-2.240" -Name "ConfRm HQ/2.240"
New-Mailbox -Room -Alias "ConfRm-HQ-2.143" -Name "ConfRm HQ/2.143"
New-Mailbox -Room -Alias "ConfRm-HQ-2.150" -Name "ConfRm HQ/2.150"
New-Mailbox -Room -Alias "ConfRm-HQ-2.145" -Name "ConfRm HQ/2.145"
New-Mailbox -Room -Alias "ConfRm-HQ-2.155" -Name "ConfRm HQ/2.155"
New-Mailbox -Room -Alias "ConfRm-HQ-2.153" -Name "ConfRm HQ/2.153"
New-Mailbox -Room -Alias "ConfRm-HQ-2.147" -Name "ConfRm HQ/2.147"
New-Mailbox -Room -Alias "ConfRm-HQ-2.277" -Name "ConfRm HQ/2.277"
New-Mailbox -Room -Alias "ConfRm-HQ-2.236" -Name "ConfRm HQ/2.236"
New-Mailbox -Room -Alias "ConfRm-HQ-2.291" -Name "ConfRm HQ/2.291"
New-Mailbox -Room -Alias "ConfRm-HQ-2.295" -Name "ConfRm HQ/2.295"
New-Mailbox -Room -Alias "ConfRm-HQ-2.299" -Name "ConfRm HQ/2.299"
New-Mailbox -Room -Alias "ConfRm-HQ-2.237" -Name "ConfRm HQ/2.237"
New-Mailbox -Room -Alias "ConfRm-HQ-2.477" -Name "ConfRm HQ/2.477"
New-Mailbox -Room -Alias "ConfRm-HQ-2.499" -Name "ConfRm HQ/2.499"
New-Mailbox -Room -Alias "ConfRm-HQ-2.441" -Name "ConfRm HQ/2.441"
New-Mailbox -Room -Alias "ConfRm-HQ-2.495" -Name "ConfRm HQ/2.495"
New-Mailbox -Room -Alias "ConfRm-HQ-2.433" -Name "ConfRm HQ/2.433"
New-Mailbox -Room -Alias "ConfRm-HQ-2.057" -Name "ConfRm HQ/2.057"
New-Mailbox -Room -Alias "ConfRm-HQ-2.348" -Name "ConfRm HQ/2.348"
New-Mailbox -Room -Alias "ConfRm-HQ-2.341" -Name "ConfRm HQ/2.341"
New-Mailbox -Room -Alias "ConfRm-HQ-2.365" -Name "ConfRm HQ/2.365"
New-Mailbox -Room -Alias "ConfRm-HQ-2.343" -Name "ConfRm HQ/2.343"
New-Mailbox -Room -Alias "ConfRm-HQ-2.345" -Name "ConfRm HQ/2.345"
New-Mailbox -Room -Alias "ConfRm-HQ-2.368" -Name "ConfRm HQ/2.368"
New-Mailbox -Room -Alias "ConfRm-HQ-2.033" -Name "ConfRm HQ/2.033"
New-Mailbox -Room -Alias "ConfRm-HQ-2.438" -Name "ConfRm HQ/2.438"
New-Mailbox -Room -Alias "ConfRm-HQ-2.440" -Name "ConfRm HQ/2.440"
New-Mailbox -Room -Alias "ConfRm-HQ-2.396" -Name "ConfRm HQ/2.396"
New-Mailbox -Room -Alias "ConfRm-HQ-1.145" -Name "ConfRm HQ/1.145"
New-Mailbox -Room -Alias "ConfRm-HQ-1.361" -Name "ConfRm HQ/1.361"
New-Mailbox -Room -Alias "ConfRm-HQ-1.031" -Name "ConfRm HQ/1.031"
New-Mailbox -Room -Alias "ConfRm-HQ-1.277" -Name "ConfRm HQ/1.277"
New-Mailbox -Room -Alias "ConfRm-HQ-1.147" -Name "ConfRm HQ/1.147"
New-Mailbox -Room -Alias "ConfRm-HQ-1.150" -Name "ConfRm HQ/1.150"
New-Mailbox -Room -Alias "ConfRm-HQ-1.143" -Name "ConfRm HQ/1.143"
New-Mailbox -Room -Alias "ConfRm-HQ-1.153" -Name "ConfRm HQ/1.153"
New-Mailbox -Room -Alias "ConfRm-HQ-1.345" -Name "ConfRm HQ/1.345"
New-Mailbox -Room -Alias "ConfRm-HQ-1.155" -Name "ConfRm HQ/1.155"
New-Mailbox -Room -Alias "ConfRm-HQ-1.019" -Name "ConfRm HQ/1.019"
New-Mailbox -Room -Alias "ConfRm-HQ-1.236" -Name "ConfRm HQ/1.236"
New-Mailbox -Room -Alias "ConfRm-HQ-1.238" -Name "ConfRm HQ/1.238"
New-Mailbox -Room -Alias "ConfRm-HQ-1.240" -Name "ConfRm HQ/1.240"
New-Mailbox -Room -Alias "ConfRm-HQ-1.299" -Name "ConfRm HQ/1.299"
New-Mailbox -Room -Alias "ConfRm-HQ-1.231" -Name "ConfRm HQ/1.231"
New-Mailbox -Room -Alias "ConfRm-HQ-1.235" -Name "ConfRm HQ/1.235"
New-Mailbox -Room -Alias "ConfRm-HQ-1.241" -Name "ConfRm HQ/1.241"
New-Mailbox -Room -Alias "ConfRm-HQ-1.291" -Name "ConfRm HQ/1.291"
New-Mailbox -Room -Alias "ConfRm-HQ-1.439" -Name "ConfRm HQ/1.439"
New-Mailbox -Room -Alias "ConfRm-HQ-1.499" -Name "ConfRm HQ/1.499"
New-Mailbox -Room -Alias "ConfRm-HQ-1.477" -Name "ConfRm HQ/1.477"
New-Mailbox -Room -Alias "ConfRm-HQ-1.440" -Name "ConfRm HQ/1.440"
New-Mailbox -Room -Alias "ConfRm-HQ-1.436" -Name "ConfRm HQ/1.436"
New-Mailbox -Room -Alias "ConfRm-HQ-1.438" -Name "ConfRm HQ/1.438"
New-Mailbox -Room -Alias "ConfRm-HQ-1.348" -Name "ConfRm HQ/1.348"
New-Mailbox -Room -Alias "ConfRm-HQ-1.343" -Name "ConfRm HQ/1.343"
New-Mailbox -Room -Alias "ConfRm-HQ-1.371" -Name "ConfRm HQ/1.371"
New-Mailbox -Room -Alias "ConfRm-HQ-1.341" -Name "ConfRm HQ/1.341"


Set-CalendarProcessing -Identity "ConfRm-HQ-2.238" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.240" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.143" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.150" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.145" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.155" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.153" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.147" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.277" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.236" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.291" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.295" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.299" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.237" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.477" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.499" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.441" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.495" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.433" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.057" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.348" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.341" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.365" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.343" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.345" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.368" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.033" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.438" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.440" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-2.396" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.145" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.361" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.031" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.277" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.147" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.150" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.143" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.153" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.345" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.155" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.019" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.236" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.238" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.240" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.299" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.231" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.235" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.241" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.291" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.439" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.499" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.477" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.440" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.436" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.438" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.348" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.343" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.371" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"
Set-CalendarProcessing -Identity "ConfRm-HQ-1.341" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This is a Microsoft Teams Meeting room!"



####Create a new building and 2 floors and sections for each floor

New-Place -Type Building -Name "Contoso HQ" -Street "One Microsoft Way" -City "Redmond" -State "WA" -PostalCode "98052" -CountryorRegion "United States"
$contosohq = (Get-PlaceV3 -Type Building | Where-Object -Property DisplayName -eq 'Contoso HQ').PlaceId
Set-PlaceV3 -Identity $contosohq -ResourceLinks @{name="Tech Support"; Value="www.contoso.sharepoint.com/TechSupport"; type="URL"}
New-Place -Type Floor -Name "1" -SortOrder 0 -ParentId $contosohq
$contosol1 = (Get-PlaceV3 -AncestorId $contosohq | Where-Object -Property DisplayName -eq '1').PlaceId
New-Place -Type Floor -Name "2" -SortOrder 1 -ParentId $contosohq
$contosol2 = (Get-PlaceV3 -AncestorId $contosohq | Where-Object -Property DisplayName -eq '2').PlaceId


$sectionSW1 = (New-Place -type Section -Name "HQ.1.SouthWest" -ParentId $contosol1).PlaceId
$sectionNW1 = (New-Place -type Section -Name "HQ.1.NorthWest" -ParentId $contosol1).PlaceId
$sectionNE1 = (New-Place -type Section -Name "HQ.1.NorthEast" -ParentId $contosol1).PlaceId
$sectionSE1 = (New-Place -type Section -Name "HQ.1.SouthEast" -ParentId $contosol1).PlaceId
$sectionSW2 = (New-Place -type Section -Name "HQ.2.SouthWest" -ParentId $contosol2).PlaceId
$sectionNW2 = (New-Place -type Section -Name "HQ.2.NorthWest" -ParentId $contosol2).PlaceId
$sectionNE2 = (New-Place -type Section -Name "HQ.2.NorthEast" -ParentId $contosol2).PlaceId
$sectionSE2 = (New-Place -type Section -Name "HQ.2.SouthEast" -ParentId $contosol2).PlaceId
$sectionN1 = (New-Place -type Section -Name "HQ.1.North" -ParentId $contosol1).PlaceId
$sectionS1 = (New-Place -type Section -Name "HQ.1.South" -ParentId $contosol1).PlaceId
$sectionN2 = (New-Place -type Section -Name "HQ.2.North" -ParentId $contosol2).PlaceId
$sectionS2 = (New-Place -type Section -Name "HQ.2.South" -ParentId $contosol2).PlaceId


#######Individual Desks/Offices
$desk1 = New-Place -type Desk -Name "Office HQ/1.190" -ParentId $sectionSW1
$desk2 = New-Place -type Desk -Name "Office HQ/1.390" -ParentId $sectionNE1
$desk3 = New-Place -type Desk -Name "Office HQ/1.266" -ParentId $sectionSE1
$desk4 = New-Place -type Desk -Name "Office HQ/1.480" -ParentId $sectionNW1
$desk5 = New-Place -type Desk -Name "Office HQ/2.190" -ParentId $sectionSW2
$desk6 = New-Place -type Desk -Name "Office HQ/2.390" -ParentId $sectionNE2
$desk7 = New-Place -type Desk -Name "Office HQ/2.266" -ParentId $sectionSE2



$mbx1 = New-Mailbox -Room -Alias "office-hq-1.190" -Name "Office HQ/1.190"
Set-Mailbox $mbx1.Identity -Type Desk -HiddenFromAddressListsEnabled $true
Set-PlaceV3 $desk1.PlaceId -Mailbox $mbx1.Identity -IsWheelChairAccessible $true -Tags "Office", "Monitor", "Docking Station", "Height Adjustable Desk"

$mbx2 = New-Mailbox -Room -Alias "office-hq-1.390" -Name "Office HQ/1.390"
Set-Mailbox $mbx2.Identity -Type Desk -HiddenFromAddressListsEnabled $true
Set-PlaceV3 $desk2.PlaceId -Mailbox $mbx2.Identity -IsWheelChairAccessible $true -Tags "Office", "Monitor", "Docking Station", "Height Adjustable Desk"

$mbx3 = New-Mailbox -Room -Alias "office-hq-1.266" -Name "Office HQ/1.266"
Set-Mailbox $mbx3.Identity -Type Desk -HiddenFromAddressListsEnabled $true
Set-PlaceV3 $desk3.PlaceId -Mailbox $mbx3.Identity -IsWheelChairAccessible $true -Tags "Office", "Monitor", "Docking Station", "Height Adjustable Desk"

$mbx4 = New-Mailbox -Room -Alias "office-hq-1.480" -Name "Office HQ/1.480"
Set-Mailbox $mbx4.Identity -Type Desk -HiddenFromAddressListsEnabled $true
Set-PlaceV3 $desk4.PlaceId -Mailbox $mbx4.Identity -IsWheelChairAccessible $true -Tags "Office", "Monitor", "Docking Station", "Height Adjustable Desk"

$mbx5 = New-Mailbox -Room -Alias "office-hq-2.190" -Name "Office HQ/2.190"
Set-Mailbox $mbx5.Identity -Type Desk -HiddenFromAddressListsEnabled $true
Set-PlaceV3 $desk5.PlaceId -Mailbox $mbx5.Identity -IsWheelChairAccessible $true -Tags "Office", "Monitor", "Docking Station", "Height Adjustable Desk"

$mbx6 = New-Mailbox -Room -Alias "office-hq-2.390" -Name "Office HQ/2.390"
Set-Mailbox $mbx6.Identity -Type Desk -HiddenFromAddressListsEnabled $true
Set-PlaceV3 $desk6.PlaceId -Mailbox $mbx6.Identity -IsWheelChairAccessible $true -Tags "Office", "Monitor", "Docking Station", "Height Adjustable Desk"

$mbx7 = New-Mailbox -Room -Alias "office-hq-2.266" -Name "Office HQ/2.266"
Set-Mailbox $mbx7.Identity -Type Desk -HiddenFromAddressListsEnabled $true
Set-PlaceV3 $desk7.PlaceId -Mailbox $mbx7.Identity -IsWheelChairAccessible $true -Tags "Office", "Monitor", "Docking Station", "Height Adjustable Desk"



#######Places - Workspaces

Set-PlaceV3 -Identity "wksp-hq-2.160" -Capacity 17 -Label "Workspace HQ/2.160" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionSW2
Set-PlaceV3 -Identity "wksp-hq-2.100" -Capacity 21 -Label "Workspace HQ/2.100" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionSW2
Set-PlaceV3 -Identity "wksp-hq-2.200" -Capacity 16 -Label "Workspace HQ/2.200" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionS2
Set-PlaceV3 -Identity "wksp-hq-2.250" -Capacity 25 -Label "Workspace HQ/2.250" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionSE2
Set-PlaceV3 -Identity "wksp-hq-2.400" -Capacity 14 -Label "Workspace HQ/2.400" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionN2
Set-PlaceV3 -Identity "wksp-hq-2.450" -Capacity 23 -Label "Workspace HQ/2.450" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionNW2
Set-PlaceV3 -Identity "wksp-hq-2.370" -Capacity 17 -Label "Workspace HQ/2.370" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionNE2
Set-PlaceV3 -Identity "wksp-hq-2.300" -Capacity 21 -Label "Workspace HQ/2.300" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionNE2
Set-PlaceV3 -Identity "wksp-hq-1.200" -Capacity 16 -Label "Workspace HQ/1.200" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionS1
Set-PlaceV3 -Identity "wksp-hq-1.100" -Capacity 20 -Label "Workspace HQ/1.100" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionSW1
Set-PlaceV3 -Identity "wksp-hq-1.250" -Capacity 25 -Label "Workspace HQ/1.250" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionSE1
Set-PlaceV3 -Identity "wksp-hq-1.300" -Capacity 28 -Label "Workspace HQ/1.300" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionNE1
Set-PlaceV3 -Identity "wksp-hq-1.400" -Capacity 12 -Label "Workspace HQ/1.400" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionN1
Set-PlaceV3 -Identity "wksp-hq-1.360" -Capacity 17 -Label "Workspace HQ/1.360" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionNE1
Set-PlaceV3 -Identity "wksp-hq-1.450" -Capacity 23 -Label "Workspace HQ/1.450" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionNW1
Set-PlaceV3 -Identity "wksp-hq-1.160" -Capacity 17 -Label "Workspace HQ/1.160" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "Monitor", "Docking Station" -ParentId $sectionSW1


###### Places - Conference Rooms

Set-PlaceV3 -Identity "ConfRm-HQ-2.238" -Capacity 4 -Label "ConfRm HQ/2.238" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.240" -Capacity 4 -Label "ConfRm HQ/2.240" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.143" -Capacity 7 -Label "ConfRm HQ/2.143" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.150" -Capacity 9 -Label "ConfRm HQ/2.150" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.145" -Capacity 2 -Label "ConfRm HQ/2.145" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.155" -Capacity 4 -Label "ConfRm HQ/2.155" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.153" -Capacity 8 -Label "ConfRm HQ/2.153" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.147" -Capacity 8 -Label "ConfRm HQ/2.147" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.277" -Capacity 6 -Label "ConfRm HQ/2.277" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.236" -Capacity 4 -Label "ConfRm HQ/2.236" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.291" -Capacity 13 -Label "ConfRm HQ/2.291" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.295" -Capacity 7 -Label "ConfRm HQ/2.295" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.299" -Capacity 15 -Label "ConfRm HQ/2.299" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.237" -Capacity 9 -Label "ConfRm HQ/2.237" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.477" -Capacity 10 -Label "ConfRm HQ/2.477" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.499" -Capacity 9 -Label "ConfRm HQ/2.499" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.441" -Capacity 4 -Label "ConfRm HQ/2.441" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.495" -Capacity 9 -Label "ConfRm HQ/2.495" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.433" -Capacity 6 -Label "ConfRm HQ/2.433" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.057" -Capacity 4 -Label "ConfRm HQ/2.057" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.348" -Capacity 9 -Label "ConfRm HQ/2.348" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.341" -Capacity 7 -Label "ConfRm HQ/2.341" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.365" -Capacity 8 -Label "ConfRm HQ/2.365" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.343" -Capacity 3 -Label "ConfRm HQ/2.343" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.345" -Capacity 8 -Label "ConfRm HQ/2.345" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.368" -Capacity 4 -Label "ConfRm HQ/2.368" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.033" -Capacity 3 -Label "ConfRm HQ/2.033" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.438" -Capacity 4 -Label "ConfRm HQ/2.438" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.440" -Capacity 3 -Label "ConfRm HQ/2.440" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-2.396" -Capacity 5 -Label "ConfRm HQ/2.396" -FloorLabel "2" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol2
Set-PlaceV3 -Identity "ConfRm-HQ-1.145" -Capacity 2 -Label "ConfRm HQ/1.145" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.361" -Capacity 8 -Label "ConfRm HQ/1.361" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.031" -Capacity 8 -Label "ConfRm HQ/1.031" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.277" -Capacity 6 -Label "ConfRm HQ/1.277" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.147" -Capacity 8 -Label "ConfRm HQ/1.147" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.150" -Capacity 9 -Label "ConfRm HQ/1.150" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.143" -Capacity 7 -Label "ConfRm HQ/1.143" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.153" -Capacity 8 -Label "ConfRm HQ/1.153" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.345" -Capacity 8 -Label "ConfRm HQ/1.345" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.155" -Capacity 4 -Label "ConfRm HQ/1.155" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.019" -Capacity 6 -Label "ConfRm HQ/1.019" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.236" -Capacity 4 -Label "ConfRm HQ/1.236" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.238" -Capacity 4 -Label "ConfRm HQ/1.238" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.240" -Capacity 4 -Label "ConfRm HQ/1.240" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.299" -Capacity 13 -Label "ConfRm HQ/1.299" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.231" -Capacity 13 -Label "ConfRm HQ/1.231" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.235" -Capacity 9 -Label "ConfRm HQ/1.235" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.241" -Capacity 4 -Label "ConfRm HQ/1.241" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.291" -Capacity 13 -Label "ConfRm HQ/1.291" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.439" -Capacity 10 -Label "ConfRm HQ/1.439" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.499" -Capacity 10 -Label "ConfRm HQ/1.499" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.477" -Capacity 6 -Label "ConfRm HQ/1.477" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.440" -Capacity 3 -Label "ConfRm HQ/1.440" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.436" -Capacity 4 -Label "ConfRm HQ/1.436" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.438" -Capacity 4 -Label "ConfRm HQ/1.438" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.348" -Capacity 9 -Label "ConfRm HQ/1.348" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.343" -Capacity 3 -Label "ConfRm HQ/1.343" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.371" -Capacity 4 -Label "ConfRm HQ/1.371" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
Set-PlaceV3 -Identity "ConfRm-HQ-1.341" -Capacity 7 -Label "ConfRm HQ/1.341" -FloorLabel "1" -IsWheelChairAccessible $True -Tags "IntelliFrame Camera" -MTREnabled $true -ParentId $contosol1
