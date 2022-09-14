import React from 'react';
import { withComponentFeatures } from 'universal-dashboard'
import Linkify from 'react-linkify';
const UDLinkify = props => {
  return <Linkify key={props.id}> {props.text}</Linkify>;
}

export default withComponentFeatures(UDLinkify)