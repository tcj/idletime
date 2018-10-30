logging spans
logStatusChange: aRecord
	TransactionLog log: ('{1} -> {2}' format: { aRecord computerName .  aRecord status }).