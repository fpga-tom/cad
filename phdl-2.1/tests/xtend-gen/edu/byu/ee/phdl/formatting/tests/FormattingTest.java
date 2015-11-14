package edu.byu.ee.phdl.formatting.tests;

import com.google.inject.Inject;
import edu.byu.ee.phdl.PhdlInjectorProvider;
import edu.byu.ee.phdl.phdl.PhdlModel;
import org.eclipse.xtend2.lib.StringConcatenation;
import org.eclipse.xtext.junit4.InjectWith;
import org.eclipse.xtext.junit4.util.ParseHelper;
import org.eclipse.xtext.resource.SaveOptions;
import org.eclipse.xtext.serializer.ISerializer;
import org.eclipse.xtext.xbase.lib.Exceptions;
import org.eclipse.xtext.xbase.lib.Extension;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

@InjectWith(PhdlInjectorProvider.class)/* 
@RunWith(XtextRunner2.class) */
@SuppressWarnings("all")
public class FormattingTest {
  @Inject
  @Extension
  private ParseHelper<PhdlModel> _parseHelper;
  
  @Inject
  @Extension
  private ISerializer _iSerializer;
  
  @Test
  public void testDeviceFormat() {
    try {
      StringConcatenation _builder = new StringConcatenation();
      _builder.newLine();
      _builder.append("device res {");
      _builder.newLine();
      _builder.append("\t");
      _builder.append("attr REFPREFIX = \"R\";");
      _builder.newLine();
      _builder.append("\t");
      _builder.append("attr FOOTPRINT = \"footprint\";");
      _builder.newLine();
      _builder.append("\t");
      _builder.append("attr LIBRARY = \"library\";");
      _builder.newLine();
      _builder.append("\t");
      _builder.append("pin a = {1};");
      _builder.newLine();
      _builder.append("\t");
      _builder.append("pin b = {2};");
      _builder.newLine();
      _builder.append("}");
      String _string = _builder.toString();
      StringConcatenation _builder_1 = new StringConcatenation();
      _builder_1.append("device res { attr \tREFPREFIX = \"R\"; ");
      _builder_1.newLine();
      _builder_1.append("attr  FOOTPRINT = \"footprint\" ; \t");
      _builder_1.newLine();
      _builder_1.append("\t");
      _builder_1.append("attr LIBRARY  = \"library\";");
      _builder_1.newLine();
      _builder_1.append("pin a = {1};");
      _builder_1.newLine();
      _builder_1.append("pin b = {2};");
      _builder_1.newLine();
      _builder_1.append("\t");
      _builder_1.append("}");
      PhdlModel _parse = this._parseHelper.parse(_builder_1);
      SaveOptions.Builder _newBuilder = SaveOptions.newBuilder();
      SaveOptions.Builder _format = _newBuilder.format();
      SaveOptions _options = _format.getOptions();
      String _serialize = this._iSerializer.serialize(_parse, _options);
      Assert.assertEquals(_string, _serialize);
    } catch (Throwable _e) {
      throw Exceptions.sneakyThrow(_e);
    }
  }
}
