/*
 * generated by Xtext
 */
package edu.byu.ee.phdl.ui.contentassist;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.swt.graphics.Image;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.resource.IContainer;
import org.eclipse.xtext.resource.IEObjectDescription;
import org.eclipse.xtext.resource.IResourceDescription;
import org.eclipse.xtext.resource.IResourceDescriptions;
import org.eclipse.xtext.ui.PluginImageHelper;
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext;
import org.eclipse.xtext.ui.editor.contentassist.ICompletionProposalAcceptor;

import com.google.inject.Inject;

import edu.byu.ee.phdl.phdl.Connection;
import edu.byu.ee.phdl.phdl.ConnectionAssign;
import edu.byu.ee.phdl.phdl.ConnectionName;
import edu.byu.ee.phdl.phdl.ConnectionRef;
import edu.byu.ee.phdl.phdl.Design;
import edu.byu.ee.phdl.phdl.DesignElement;
import edu.byu.ee.phdl.phdl.Device;
import edu.byu.ee.phdl.phdl.Instance;
import edu.byu.ee.phdl.phdl.Pin;
import edu.byu.ee.phdl.phdl.PinAssign;
import edu.byu.ee.phdl.phdl.PortAssign;
import edu.byu.ee.phdl.services.PhdlGrammarAccess;
import edu.byu.ee.phdl.utils.PhdlUtils;

/**
 * see
 * http://www.eclipse.org/Xtext/documentation/latest/xtext.html#contentAssist on
 * how to customize content assistant
 */
public class PhdlProposalProvider extends AbstractPhdlProposalProvider {

	@Inject
	IContainer.Manager containermanager;

	@Inject
	IResourceDescriptions resourceDescriptions;

	@Inject
	PluginImageHelper imageHelper;

	@Inject
	PhdlGrammarAccess grammarAccess;

	@Override
	public void complete_Indices(EObject model, RuleCall ruleCall, ContentAssistContext context,
			ICompletionProposalAcceptor acceptor) {
		if (model instanceof PinAssign || model instanceof PortAssign) {
			Instance inst = (Instance) model.eContainer();
			if (inst.getArray().isArray()) {
				for (Integer i : PhdlUtils.getIndices(inst.getArray().getMsb(), inst.getArray().getLsb())) {
					String index = Integer.toString(i);
					acceptor.accept(createCompletionProposal("(" + index + ").", "(" + index + ").", null, context));
				}
				String array = inst.getArray().getMsb() + ":" + inst.getArray().getLsb();
				acceptor.accept(createCompletionProposal("(" + array + ").", "(" + array + ").", null, context));
			}
		}
	}

	@Override
	public void complete_QualifiedNameWithWildCard(EObject model, RuleCall ruleCall, ContentAssistContext context,
			ICompletionProposalAcceptor acceptor) {
		IResourceDescription resourceDescription = resourceDescriptions.getResourceDescription(model.eResource()
				.getURI());
		List<IContainer> visiblecontainers = containermanager.getVisibleContainers(resourceDescription,
				resourceDescriptions);
		for (IContainer container : visiblecontainers) {
			for (IEObjectDescription eobjectDescription : container.getExportedObjects()) {
				EObject eObjectOrProxy = eobjectDescription.getEObjectOrProxy();
				if (eObjectOrProxy instanceof Device) {
					if (eobjectDescription.getQualifiedName().getSegmentCount() == 2) {
						acceptor.accept(createCompletionProposal(eobjectDescription.getQualifiedName()
								.getFirstSegment() + ".*", context));
						acceptor.accept(createCompletionProposal(eobjectDescription.getQualifiedName().toString(),
								context));
					}
				}
			}
		}
	}

	@Override
	public void complete_Qualifier(EObject model, RuleCall ruleCall, ContentAssistContext context,
			ICompletionProposalAcceptor acceptor) {
		if (model instanceof PinAssign || model instanceof PortAssign) {
			Instance inst = (Instance) model.eContainer();
			if (inst.getArray().isArray()) {
				for (Integer i : PhdlUtils.getIndices(inst.getArray().getMsb(), inst.getArray().getLsb())) {
					String index = Integer.toString(i);
					acceptor.accept(createCompletionProposal("this(" + index + ").", "this(" + index + ").", null,
							context));
				}
				String array = inst.getArray().getMsb() + ":" + inst.getArray().getLsb();
				acceptor.accept(createCompletionProposal("this(" + array + ").", "this(" + array + ").", null, context));
			}
		}
	}

	@Override
	public void complete_Slices(final EObject model, RuleCall ruleCall, ContentAssistContext context,
			ICompletionProposalAcceptor acceptor) {
		if (model instanceof PinAssign) {
			Pin pin = ((PinAssign) model).getRef();
			if (pin != null && !pin.eIsProxy() && pin.getVector().isVector()) {
				for (Integer i : PhdlUtils.getIndices(pin.getVector().getMsb(), pin.getVector().getLsb()))
					acceptor.accept(createCompletionProposal("[" + Integer.toString(i) + "]", context));
				acceptor.accept(createCompletionProposal("[" + pin.getVector().getMsb() + ":"
						+ pin.getVector().getLsb() + "]", context));
			}
		} else if (model instanceof PortAssign) {
			Connection conn = (Connection) ((PortAssign) model).getRef().eContainer();
			if (conn != null && !conn.eIsProxy() && conn.getVector().isVector()) {
				for (Integer i : PhdlUtils.getIndices(conn.getVector().getMsb(), conn.getVector().getLsb()))
					acceptor.accept(createCompletionProposal("[" + Integer.toString(i) + "]", context));
				acceptor.accept(createCompletionProposal("[" + conn.getVector().getMsb() + ":"
						+ conn.getVector().getLsb() + "]", context));
			}
		} else if (model instanceof ConnectionAssign) {
			Connection conn = (Connection) ((ConnectionAssign) model).getRef().eContainer();
			if (conn != null && !conn.eIsProxy() && conn.getVector().isVector()) {
				for (Integer i : PhdlUtils.getIndices(conn.getVector().getMsb(), conn.getVector().getLsb()))
					acceptor.accept(createCompletionProposal("[" + Integer.toString(i) + "]", context));
				acceptor.accept(createCompletionProposal("[" + conn.getVector().getMsb() + ":"
						+ conn.getVector().getLsb() + "]", context));
			}
		} else if (model instanceof ConnectionRef) {
			Connection conn = (Connection) ((ConnectionRef) model).getRef().eContainer();
			if (conn != null && !conn.eIsProxy() && conn.getVector().isVector()) {
				for (Integer i : PhdlUtils.getIndices(conn.getVector().getMsb(), conn.getVector().getLsb()))
					acceptor.accept(createCompletionProposal("[" + Integer.toString(i) + "]", context));
				acceptor.accept(createCompletionProposal("[" + conn.getVector().getMsb() + ":"
						+ conn.getVector().getLsb() + "]", context));
			}
		} else
			return;
	}

	@Override
	public void completeConnectionAssign_Ref(EObject model, Assignment assignment, ContentAssistContext context,
			ICompletionProposalAcceptor acceptor) {
		Design d = (Design) model;
		List<Connection> connections = new ArrayList<Connection>();
		List<DesignElement> elements = d.getElements();
		for (DesignElement element : elements) {
			if (element instanceof Connection)
				connections.add((Connection) element);
		}
		for (Connection connection : connections) {
			Image image;
			if (connection.isNet())
				image = imageHelper.getImage("Net.gif");
			else
				image = imageHelper.getImage("Port.gif");
			for (ConnectionName name : connection.getNames()) {
				if (!acceptor.canAcceptMoreProposals())
					return;
				acceptor.accept(createCompletionProposal(name.getName(), name.getName(), image, context));
			}
		}
	}

	@Override
	public void completeKeyword(Keyword keyword, ContentAssistContext contentAssistContext,
			ICompletionProposalAcceptor acceptor) {
		// turn off the following keywords from the content assist
		if (grammarAccess.getImportAccess().getImportKeyword_0().equals(keyword)
				|| grammarAccess.getPackageAccess().getPackageKeyword_0().equals(keyword)
				|| grammarAccess.getDeviceAccess().getDeviceKeyword_0().equals(keyword)
				|| grammarAccess.getDesignAccess().getDesignDesignKeyword_0_0_0().equals(keyword)
				|| grammarAccess.getDesignAccess().getSubdesignSubdesignKeyword_0_1_0().equals(keyword)
				|| grammarAccess.getInstanceAccess().getInstInstKeyword_0_0_0().equals(keyword)
				|| grammarAccess.getInstanceAccess().getSubInstSubinstKeyword_1_0_0().equals(keyword)
				|| grammarAccess.getConnectionAccess().getNetNetKeyword_0_0_0().equals(keyword)
				|| grammarAccess.getConnectionAccess().getPortPortKeyword_1_0_0().equals(keyword)
				|| grammarAccess.getConcatenationAccess().getAmpersandKeyword_1_1_0().equals(keyword))
			return;
		super.completeKeyword(keyword, contentAssistContext, acceptor);
	}
}
