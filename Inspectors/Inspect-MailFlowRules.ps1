function Inspect-MailFlowRules {
	$rules = Get-TransportRule

	ForEach ($rule in $rules) {
		$rule | Format-List | Out-File "$($rule.Name)_Mail-Flow-Rule.txt"
	}
}

return Inspect-MailFlowRules