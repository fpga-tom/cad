package cad.translator;

import edu.byu.ee.phdl.netlist.PhdlNet;
import edu.byu.ee.phdl.netlist.PhdlNetlist;
import edu.byu.ee.phdl.netlist.PhdlPart;
import edu.byu.ee.phdl.netlist.PhdlPin;
import edu.byu.ee.phdl.translate.DefaultTranslator;

public class MyTranslator extends DefaultTranslator {

	private int netCode = 1;

	public MyTranslator() {
		this.fileExtension = ".kicad.net";
	}

	@Override
	protected String translateHeader() {
		return "";
	}

	@Override
	protected String translateNetlist(PhdlNetlist netlist) {
		StringBuilder sb = new StringBuilder();
		sb.append("(export (version D)");
		sb.append(translateHeader());
		sb.append(translateParts(netlist));
		sb.append(translateNets(netlist));
		sb.append(")");
		return sb.toString();
	}

	@Override
	protected String translateParts(PhdlNetlist netlist) {
		StringBuilder sb = new StringBuilder();
		sb.append("(components\n");
		for (PhdlPart part : netlist.getParts()) {
			sb.append(translatePart(part));
		}
		sb.append(")\n");
		return sb.toString();
	}

	@Override
	protected String translatePart(PhdlPart part) {
		StringBuilder sb = new StringBuilder();
		sb.append("\t(comp ");
		sb.append("(ref " + part.getName() + ")\n");
		sb.append("\t\t(footprint " + part.getFootprint() + ")");
		sb.append(")\n");
		return sb.toString();
	}

	@Override
	protected String translateNets(PhdlNetlist netlist) {
		StringBuilder sb = new StringBuilder();
		sb.append("(nets\n");
		for (PhdlNet net : netlist.getNets()) {
			sb.append(translateNet(net));
		}
		sb.append(")\n");
		return sb.toString();
	}

	@Override
	protected String translateNet(PhdlNet net) {
		StringBuilder sb = new StringBuilder();
		sb.append("\t(net (code " + (netCode++) + ") (name \"" + net.getName()
				+ "\")\n");
		for (PhdlPin pin : net.getPins()) {
			sb.append("\t\t");
			sb.append("(node (ref " + pin.getPartName() + ") (pin "
					+ pin.getPinName() + "))\n");
		}
		sb.append(")\n");
		return sb.toString();
	}
}
