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
        private const string rootPath = @"D:\\MyProject\\DotNet\\XSLTValidatorByXML\\XSLTTransformationFromXMLFile\\Allocation";
        private static string sourceFile = $@"{rootPath}\\RawAllocation.xml";
        private static string stylesheet = $@"{rootPath}\\AllocationToAllocationGroup.xslt";
        private static string outputFile = $@"{rootPath}\\output.xml";
        static void Main(string[] args)
        {
            // Enable XSLT debugging.
            XslCompiledTransform xslt = new XslCompiledTransform(true);
            // Compile the style sheet.
            xslt.Load(stylesheet, new XsltSettings { EnableScript = true }, null);
            // Execute the XSLT transform.
            FileStream outputStream = new FileStream(outputFile, FileMode.Create);
            xslt.Transform(sourceFile, null, outputStream);

            Console.WriteLine("---------------------------------^---------------------------------");
            Console.ReadLine();
        }
    }
}
