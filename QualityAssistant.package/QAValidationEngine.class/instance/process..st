private
process: anEntity
	"| old new added removed |

	old := anEntity critics keys."
	anEntity validateWith: rules.
	"new := anEntity critics keys.
	
	added := new \ old.
	removed := old \ new.
	
	(added notEmpty or: [ removed notEmpty ]) ifTrue: [ "
		SystemAnnouncer uniqueInstance
			criticsOf: anEntity
			added: #() "added"
			removed: #() "removed ]"