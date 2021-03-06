version12: spec 
        <version: '1.2' imports: #('1.1-baseline')>

        spec for: #common do: [
                spec blessing: #development.
			spec project: 'ConfigurationOfNativeBoost default'  with: '1.2'.
			spec package: 'Athens-Core' with: 'Athens-Core-IgorStasenko.18'.
			spec package: 'Athens-Text' with: 'Athens-Text-IgorStasenko.2'.
			spec package: 'Athens-Balloon' with: 'Athens-Balloon-IgorStasenko.6'.
			spec package: 'Athens-Morphic' with: 'Athens-Morphic-IgorStasenko.2'.
			spec package: 'Athens-CairoPools' with: 'Athens-CairoPools-FernandoOlivero.4'.
			spec package: 'Athens-Cairo' with: 'Athens-Cairo-IgorStasenko.25'.
			spec package: 'Athens-PangoCairo' with: 'Athens-PangoCairo-FernandoOlivero.6'.
			spec package: 'Athens-Examples' with: 'Athens-Examples-IgorStasenko.14'.
                ].