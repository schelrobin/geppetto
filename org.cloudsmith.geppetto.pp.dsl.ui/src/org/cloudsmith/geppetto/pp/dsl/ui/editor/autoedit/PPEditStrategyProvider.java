/**
 * Copyright (c) 2011 Cloudsmith Inc. and other contributors, as listed below.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *   Cloudsmith
 * 
 */
package org.cloudsmith.geppetto.pp.dsl.ui.editor.autoedit;

import org.cloudsmith.geppetto.pp.dsl.ui.preferences.PPPreferencesHelper;
import org.eclipse.xtext.ui.editor.autoedit.DefaultAutoEditStrategyProvider;

import com.google.inject.Inject;

/**
 * Overrides the default to make auto matching/insert configurable.
 * 
 */
public class PPEditStrategyProvider extends DefaultAutoEditStrategyProvider {

	@Inject
	private PPPreferencesHelper prefsHelper;

	@Override
	protected void configureSquareBrackets(IEditStrategyAcceptor acceptor) {
		if(prefsHelper.isAutoBracketInsertWanted())
			super.configureSquareBrackets(acceptor);
	}

}
