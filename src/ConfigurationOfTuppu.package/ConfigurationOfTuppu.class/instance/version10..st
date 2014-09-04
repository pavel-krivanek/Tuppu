versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'PavelKrivanek'.
		spec timestamp: '9/4/2014 16:17'.
		spec 
			package: 'Tuppu-Core' with: 'Tuppu-Core-PavelKrivanek.4';
			package: #'Tuppu-Tests' with: 'Tuppu-Tests-PavelKrivanek.1'. ].
