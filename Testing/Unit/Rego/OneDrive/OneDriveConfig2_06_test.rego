package onedrive
import future.keywords


#
# Policy 1
#--
test_NotImplemented_Correct if {
    ControlNumber := "OneDrive 2.6"
    Requirement := "OneDrive Client Sync SHALL be restricted to the local domain"

    Output := tests with input as { }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]

    count(RuleOutput) == 1
    not RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "Currently cannot be checked automatically. See Onedrive Secure Configuration Baseline policy 2.6 for instructions on manual check"
}