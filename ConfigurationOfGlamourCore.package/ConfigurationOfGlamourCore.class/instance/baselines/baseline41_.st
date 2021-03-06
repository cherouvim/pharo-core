baseline41: spec
	<version: '4.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'For Pharo 6.0 - adds Glamour-SpecIntegration package'.
		spec repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main'.

		spec 
			package: 'Glamour-Announcements';
			package: 'Glamour-Helpers';
			package: 'Glamour-Core' with: [
				spec requires: #('Glamour-Helpers' 'Glamour-Announcements' ). ];
			package: 'Glamour-Presentations' with: [
				spec requires: #('Glamour-Core' ). ];
			package: 'Glamour-Browsers' with: [
				spec requires: #('Glamour-Core' ). ];
			package: 'Glamour-Examples' with: [
				spec requires: #('Glamour-Core' ). ];
			package: 'Glamour-FastTable' with: [
				spec requires: #('FastTable' 'Glamour-Examples' 'Glamour-Core' 'Glamour-Presentations' 'Glamour-Morphic-Renderer' 'Glamour-Tests-Morphic'). ];
			package: 'Glamour-Morphic-Brick' with: [
				spec requires: #('Glamour-Core' ). ];
			package: 'Glamour-Morphic-Brick-Tests' with: [
				spec requires: #('Glamour-Morphic-Brick' ). ];
			package: 'Glamour-Tests-Core';
			package: 'Glamour-Tests-Resources';
			package: 'Glamour-Morphic-Theme';
			package: 'Glamour-Morphic-Widgets' with: [
				spec requires: #('Glamour-Morphic-Brick' ). ];
			package: 'Glamour-Morphic-Renderer' with: [
				spec requires: #('Glamour-Morphic-Widgets' 'Glamour-Core' ). ];
			package: 'Glamour-Morphic-Pager' with: [
				spec requires: #('Glamour-Morphic-Renderer' 'Glamour-Morphic-Brick' ). ];
			package: 'Glamour-Tests-Morphic' with: [
				spec requires: #('Glamour-Morphic-Renderer' 'Glamour-Morphic-Brick' 'Glamour-Morphic-Pager' ). ];
			package: 'Glamour-Rubric-Presentations' with: [
				spec requires: #('Glamour-Presentations' ). ];
			package: 'Glamour-Tests-Rubric' with: [
				spec requires: #('Glamour-Tests-Morphic' 'Glamour-Rubric-Presentations' ). ];
			package: 'Glamour-SpecIntegration' with: [
				spec requires: #('Glamour-Core' 'Glamour-Examples' 'Glamour-Morphic-Renderer' 'Glamour-Rubric-Presentations'). ].
			
		spec project: 'FastTable' with: [
				spec
					className: #ConfigurationOfFastTable;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/estebanlm/FastTable/main/' ].
			
		spec 
			group: 'Core' with: #('Glamour-Announcements' 'Glamour-Helpers' 'Glamour-Core' 'Glamour-Presentations' 'Glamour-Browsers' 'Glamour-Examples' 'Glamour-Rubric-Presentations' );
			group: 'Morphic' with: #('Glamour-Morphic-Brick' 'Glamour-Morphic-Widgets' 'Glamour-Morphic-Renderer' 'Glamour-Morphic-Theme' 'Glamour-Morphic-Pager' 'Glamour-FastTable' 'Glamour-SpecIntegration' );
			group: 'Tests' with: #('Glamour-Tests-Core' 'Glamour-Tests-Morphic' 'Glamour-Tests-Rubric' 'Glamour-Tests-Resources' 'Glamour-Morphic-Brick-Tests' );
			group: 'default' with: #('Core' 'Morphic' 'Tests' ). ].
