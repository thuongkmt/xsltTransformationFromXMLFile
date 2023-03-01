using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Xsl;

namespace XSLTTransformationFromXMLFile
{
    internal class Program
    {
        private const string sourceFile = @"D:\MyProject\DotNet\XSLTValidatorByXML\\XSLTTransformationFromXMLFile\Allocation_output.xml";
        private const string stylesheet = @"D:\MyProject\DotNet\XSLTValidatorByXML\\XSLTTransformationFromXMLFile\Allocation2DallasSO.xslt";
        private const string outputFile = @"D:\MyProject\DotNet\XSLTValidatorByXML\\XSLTTransformationFromXMLFile\output.xml";
        static void Main(string[] args)
        {
            // Enable XSLT debugging.
            XslCompiledTransform xslt = new XslCompiledTransform(true);
            // Compile the style sheet.
            xslt.Load(stylesheet, new XsltSettings { EnableScript = true }, null);

            // Execute the XSLT transform.
            FileStream outputStream = new FileStream(outputFile, FileMode.Append);
            xslt.Transform(sourceFile, null, outputStream);
        }
    }
}
