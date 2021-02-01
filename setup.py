import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

packages = []
for package in setuptools.find_packages():
    if not package.startswith("tests"):
        packages.append(package)

setuptools.setup(
    name="rvm-settings",
    version="0.12.0",
    description="",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/content-enrichment-platform/rvm-settings",
    packages=packages,
    classifiers=[],
    python_requires=">=3.5",
)
