import xml.etree.ElementTree as ET

# Create basic draw.io structure
mxfile = ET.Element("mxfile", host="app.diagrams.net")
diagram = ET.SubElement(mxfile, "diagram", name="Page-1")
mxGraphModel = ET.SubElement(diagram, "mxGraphModel")
root = ET.SubElement(mxGraphModel, "root")

# Add base cells (required by draw.io)
ET.SubElement(root, "mxCell", id="0")
ET.SubElement(root, "mxCell", id="1", parent="0")

# Add a rectangle node
node1 = ET.SubElement(root, "mxCell", id="2", value="EC2 Instance",
                      style="shape=rectangle;fillColor=#dae8fc;", vertex="1", parent="1")
ET.SubElement(node1, "mxGeometry", x="100", y="100", width="120", height="60", as_="geometry")

# Convert to string and save
tree = ET.ElementTree(mxfile)
tree.write("my_diagram.drawio", encoding="utf-8", xml_declaration=True)
