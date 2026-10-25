# Store Manager
1. How severly do WordPress plugin limitations and paywall fees currently hinder Syergy Zyklen's ability to scale sales, configure custom features and expand the business?
> [!NOTE]Answer
> Woocomerce another plugin can't add own interface
> Hard to link POS to woocomerce two different plugin can't be compatible
> Each plugin have own development 

2. How much labor and administrative effort are spend manually verifying completed cycles and crediting cash-back into individual user wallets and how frequently do human errors occur during this process?
> [!NOTE]Answer
> Must check everynight after store closing.
> Admin can manually remove wrong, add undo button(?

3. What operational rules and safety checks must be built into the automated cycle workflow so that completed cycles automatically credit user wallets accurately?
> [!NOTE]Answer
> Transaction history for cash back

4. What specific data fields and filtering capabilities do you require on the admin dashboard—such as daily sales statistics, user credit tracking, inventory levels, and menu management—to support daily business decisions?
> [!NOTE]Answer
> Show daily sales
> Show inventory
> Allow for menu mangement
> Allow diff logins can see current order (Optional)

# Initial Developer
1. What led to the initial decision to calculate ongoing product cycles mathematically rather than storing cycle states inside a dedicated database?
> [!NOTE]Answer
> It was out of the developer's knowledge
> Unable to connect database to woocomerce plugin

2. At what point did mathematical cycle calculations begin consuming excessive server resources on the WordPress platform?
> [!NOTE]Answer
> It caused significant lag after every customer transaction
> It also imposes a limitation not allowing for the company to change cycle size if desired

3. What specific obstacles did you encounter when trying to modify, debug, or maintain the "vibe-coded" scripts over time without formal database architecture?
> [!NOTE]Answer
> Because it was all done by chatgpt the code was unreadable even by more experienced developer

4. Which third-party WordPress plugins created the most technical or financial friction for user authentication and backend management?
> [!NOTE]Answer
> Woocomerce main antagonist can't connect to POS
> POS system doesn't allow for automated cycle updating
> Requires the POS to be down to access admin dashboard

# Worker
1. What layout features do you need on the POS sub-domain to handle fast-paced customer orders, check product inventory, and update menu items seamlessly during peak hours?
> [!NOTE]Answer
> Allow to select available food and handle transaction  

2. What are your exact operational requirements for connecting and printing receipts via the JK-5802h thermal printer using Bluetooth or USB interfaces?
> [!NOTE]Answer
> Our current printer uses bluetooth therefore the system must be able to support that

3. How often do customers request counter assistance to check their credit balances or active cycle status, and how can the new interface speed up this verification process?
> [!NOTE]Answer
> The customer do not require assistance to check balance but they often require assistance when trying to pay with their credit balance
> Requries manual input and manager confirmation
