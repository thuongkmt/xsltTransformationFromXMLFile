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

        private const string sourceFile2 = @"D:\MyProject\DotNet\XSLTValidatorByXML\\XSLTTransformationFromXMLFile\output_without_group.xml";
        private const string stylesheet2 = @"D:\MyProject\DotNet\XSLTValidatorByXML\\XSLTTransformationFromXMLFile\Allocation2DallasSOGroup.xslt";
        private const string outputFile2 = @"D:\MyProject\DotNet\XSLTValidatorByXML\\XSLTTransformationFromXMLFile\output_group.xml";
        static void Main(string[] args)
        {
            /*// Enable XSLT debugging.
            XslCompiledTransform xslt = new XslCompiledTransform(true);
            // Compile the style sheet.
            xslt.Load(stylesheet, new XsltSettings { EnableScript = true }, null);
            // Execute the XSLT transform.
            FileStream outputStream = new FileStream(outputFile, FileMode.Append);
            xslt.Transform(sourceFile, null, outputStream);*/

            // Enable XSLT debugging.
            XslCompiledTransform xslt2 = new XslCompiledTransform(true);
            // Compile the style sheet.
            xslt2.Load(stylesheet2);
            // Execute the XSLT transform.
            FileStream outputStream2 = new FileStream(outputFile2, FileMode.Create);
            xslt2.Transform(sourceFile2, null, outputStream2);

            Console.WriteLine("---------------------------------^---------------------------------");
            Console.ReadLine();
        }
    }
}
