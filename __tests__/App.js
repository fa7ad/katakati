import 'react-native';
import React from 'react';
import { make as App } from '../src/App.bs';

// Note: test renderer must be required after react-native.
import renderer from 'react-test-renderer';

it('renders correctly', () => {
  renderer.create(<App />);
});
