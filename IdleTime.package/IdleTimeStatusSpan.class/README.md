I calculate the difference between two records.

Note that my state is lazily initialized.  Please use accessor to read my state.

I will tell you my status based on my older record, not my newer.  This makes sense based on the model:  a StatusSpan represents the duration of a particular status.  A status change would result in a new StatusSpan being created.

