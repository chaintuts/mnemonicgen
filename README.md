## General
____________

### Author
* Josh McIntyre

### Website
* jmcintyre.net

### Overview
* MnemonicGen creates BIP39-compliant seed phrases for Bitcoin/Bitcoin Cash wallets

## Development
________________

### Git Workflow
* master for releases (merge development)
* development for bugfixes and new features

### Building
* make build
Build the application
* make clean
Clean the build directory

### Features
* Generate a 12-word BIP39-compliant mnemonic seed phrase in English
* Print this seed phrase on the command line for backup/wallet creation

### Requirements
* Requires Python with bitstring
* Use `pip install bitstring` if it is not already available

### Platforms
* Linux
* Windows
* MacOSX

## Usage
____________

### Command line usage
* From the command line in the build directory, run `./mnemonicgen.py` or `python mnemonicgen.py`
* Write down the mnemonic phrase in order
* Import the seed phrase into a modern HD (Hierarchical Deterministic) Bitcoin/Bitcoin Cash wallet.
Examples include the Bitcoin.com wallet, Blockchain.info, or Electron Cash

### Security Considerations
* **PLEASE NOTE** - Every effort is made to learn and follow best practices in the development of this software.
However, this code should be considered academic/experimental.
**Use at your own risk.**
* Always store your seed phrase in a secure location. Write it down and keep it somewhere safe, or use an encrypted password manager.
* This tool does not require any network connectivity. Consider running offline to mitigate eavesdropping.
* This tool uses Python's os.urandom to generate entropy for the seed. The underlying OS implementation determines the level of security.
(/dev/urandom on Unix-based systems, CryptGenRandom() on Windows). It may be best to avoid using fresh machines or VM's as insufficient
entropy may be used to generate a less-secure seed. 
