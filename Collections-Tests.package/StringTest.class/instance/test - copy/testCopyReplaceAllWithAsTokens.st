testCopyReplaceAllWithAsTokens

self assert: ('test te str' copyReplaceAll: 'te' with: 'longone' asTokens: true) = 'test longone str'.
self assert: ('test te str' copyReplaceAll: 'te' with: 'longone' asTokens: false) = 'longonest longone str'.
self assert: ('123 test xyz' copyReplaceAll: 'st' with: 'mper' asTokens: true) = '123 test xyz'.
self assert: ('������������' copyReplaceAll: '����' with: 'A' asTokens: false) = '��A������'.
self assert: ('����� �����t �����' copyReplaceAll: ' ' with:  '�' asTokens: false) = '�����������t������'.