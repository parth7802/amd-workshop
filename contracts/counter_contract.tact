import "@stdlib/deploy";

contract CounterContract with Deployable {

    val: Int as uint32;
    
    init() {
        self.val = 0;
    }

    get fun counter(): Int
    {
        return self.val;
    }

    receive("Increment")
    {
        self.val = self.val + 1;
    }
}
